package com.lifeadvice.service;

import com.lifeadvice.dto.AdviceResponse;
import com.lifeadvice.dto.CategoryResponse;
import com.lifeadvice.dto.SearchRequest;
import com.lifeadvice.model.Category;
import com.lifeadvice.model.LifeAdvice;
import com.lifeadvice.model.UserQuery;
import com.lifeadvice.repository.CategoryRepository;
import com.lifeadvice.repository.LifeAdviceRepository;
import com.lifeadvice.repository.UserQueryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class LifeAdviceService {

    private final LifeAdviceRepository adviceRepository;
    private final CategoryRepository categoryRepository;
    private final UserQueryRepository userQueryRepository;

    // ─── Categories ────────────────────────────────────────────────────────────

    public List<CategoryResponse> getAllCategories() {
        return categoryRepository.findAll().stream()
                .map(cat -> CategoryResponse.builder()
                        .id(cat.getId())
                        .name(cat.getName())
                        .description(cat.getDescription())
                        .iconEmoji(cat.getIconEmoji())
                        .adviceCount(adviceRepository.countByCategoryName(cat.getName()))
                        .build())
                .collect(Collectors.toList());
    }

    public Optional<CategoryResponse> getCategoryById(Long id) {
        return categoryRepository.findById(id)
                .map(cat -> CategoryResponse.builder()
                        .id(cat.getId())
                        .name(cat.getName())
                        .description(cat.getDescription())
                        .iconEmoji(cat.getIconEmoji())
                        .adviceCount(adviceRepository.countByCategoryName(cat.getName()))
                        .build());
    }

    // ─── Advice Retrieval ──────────────────────────────────────────────────────

    public List<AdviceResponse> getAllAdvice() {
        return adviceRepository.findAll().stream()
                .map(this::toResponse)
                .collect(Collectors.toList());
    }

    public Optional<AdviceResponse> getAdviceById(Long id) {
        return adviceRepository.findById(id).map(this::toResponse);
    }

    public List<AdviceResponse> getAdviceByCategory(String categoryName) {
        logQuery(categoryName, categoryName, 0);
        List<AdviceResponse> results = adviceRepository.findByCategoryName(categoryName)
                .stream().map(this::toResponse).collect(Collectors.toList());
        logQuery(categoryName, categoryName, results.size());
        return results;
    }

    public AdviceResponse getRandomAdvice() {
        LifeAdvice random = adviceRepository.findRandomAdvice();
        return random != null ? toResponse(random) : null;
    }

    public AdviceResponse getRandomAdviceByCategory(String categoryName) {
        LifeAdvice random = adviceRepository.findRandomAdviceByCategory(categoryName);
        return random != null ? toResponse(random) : null;
    }

    public List<AdviceResponse> getAdviceByUrgency(String urgencyLevel) {
        return adviceRepository.findByUrgencyLevelIgnoreCase(urgencyLevel)
                .stream().map(this::toResponse).collect(Collectors.toList());
    }

    public List<AdviceResponse> getAdviceByDifficulty(String difficulty) {
        return adviceRepository.findByDifficultyIgnoreCase(difficulty)
                .stream().map(this::toResponse).collect(Collectors.toList());
    }

    // ─── Search ────────────────────────────────────────────────────────────────

    public List<AdviceResponse> search(SearchRequest request) {
        List<LifeAdvice> results;

        boolean hasKeyword = request.getKeyword() != null && !request.getKeyword().isBlank();
        boolean hasCategory = request.getCategory() != null && !request.getCategory().isBlank();
        boolean hasUrgency = request.getUrgencyLevel() != null && !request.getUrgencyLevel().isBlank();
        boolean hasDifficulty = request.getDifficulty() != null && !request.getDifficulty().isBlank();

        if (hasKeyword && hasCategory) {
            results = adviceRepository.searchByCategoryAndKeyword(request.getCategory(), request.getKeyword());
        } else if (hasKeyword) {
            results = adviceRepository.searchByKeyword(request.getKeyword());
        } else if (hasCategory) {
            results = adviceRepository.findByCategoryName(request.getCategory());
        } else if (hasUrgency) {
            results = adviceRepository.findByUrgencyLevelIgnoreCase(request.getUrgencyLevel());
        } else if (hasDifficulty) {
            results = adviceRepository.findByDifficultyIgnoreCase(request.getDifficulty());
        } else {
            results = adviceRepository.findAll();
        }

        // Apply urgency filter if keyword/category was already used
        if (hasUrgency && (hasKeyword || hasCategory)) {
            final String urgency = request.getUrgencyLevel();
            results = results.stream()
                    .filter(a -> urgency.equalsIgnoreCase(a.getUrgencyLevel()))
                    .collect(Collectors.toList());
        }

        // Log query
        String queryText = hasKeyword ? request.getKeyword() : (hasCategory ? request.getCategory() : "ALL");
        logQuery(queryText, request.getCategory(), results.size());

        return results.stream().map(this::toResponse).collect(Collectors.toList());
    }

    // ─── Stats ─────────────────────────────────────────────────────────────────

    public long getTotalAdviceCount() {
        return adviceRepository.count();
    }

    public List<UserQuery> getRecentQueries() {
        return userQueryRepository.findTop10ByOrderByQueriedAtDesc();
    }

    // ─── Helpers ───────────────────────────────────────────────────────────────

    private AdviceResponse toResponse(LifeAdvice a) {
        return AdviceResponse.builder()
                .id(a.getId())
                .question(a.getQuestion())
                .answer(a.getAnswer())
                .tips(a.getTips())
                .tags(a.getTags())
                .difficulty(a.getDifficulty())
                .urgencyLevel(a.getUrgencyLevel())
                .categoryName(a.getCategory().getName())
                .categoryEmoji(a.getCategory().getIconEmoji())
                .createdAt(a.getCreatedAt())
                .build();
    }

    private void logQuery(String queryText, String category, int results) {
        UserQuery uq = new UserQuery();
        uq.setQueryText(queryText);
        uq.setCategorySearched(category);
        uq.setResultsFound(results);
        userQueryRepository.save(uq);
    }
}
