package com.lifeadvice.controller;

import com.lifeadvice.dto.*;
import com.lifeadvice.model.UserQuery;
import com.lifeadvice.service.LifeAdviceService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class LifeAdviceController {

    private final LifeAdviceService adviceService;

    // ─────────────────────────────────────────────────────────────────────────
    // CATEGORIES
    // ─────────────────────────────────────────────────────────────────────────

    /**
     * GET /api/categories
     * Returns all available life categories with advice counts.
     */
    @GetMapping("/categories")
    public ResponseEntity<ApiResponse<List<CategoryResponse>>> getAllCategories() {
        List<CategoryResponse> cats = adviceService.getAllCategories();
        return ResponseEntity.ok(ApiResponse.success(cats, "Categories fetched successfully", cats.size()));
    }

    /**
     * GET /api/categories/{id}
     * Returns a single category by ID.
     */
    @GetMapping("/categories/{id}")
    public ResponseEntity<ApiResponse<CategoryResponse>> getCategoryById(@PathVariable Long id) {
        return adviceService.getCategoryById(id)
                .map(cat -> ResponseEntity.ok(ApiResponse.success(cat, "Category found", 1)))
                .orElse(ResponseEntity.notFound().build());
    }

    // ─────────────────────────────────────────────────────────────────────────
    // ADVICE RETRIEVAL
    // ─────────────────────────────────────────────────────────────────────────

    /**
     * GET /api/advice
     * Returns all advice entries.
     */
    @GetMapping("/advice")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> getAllAdvice() {
        List<AdviceResponse> list = adviceService.getAllAdvice();
        return ResponseEntity.ok(ApiResponse.success(list, "All advice fetched", list.size()));
    }

    /**
     * GET /api/advice/{id}
     * Returns a specific advice entry by ID.
     */
    @GetMapping("/advice/{id}")
    public ResponseEntity<ApiResponse<AdviceResponse>> getAdviceById(@PathVariable Long id) {
        return adviceService.getAdviceById(id)
                .map(a -> ResponseEntity.ok(ApiResponse.success(a, "Advice found", 1)))
                .orElse(ResponseEntity.notFound().build());
    }

    /**
     * GET /api/advice/category/{categoryName}
     * Returns all advice for a specific category (e.g., "Stress Management").
     */
    @GetMapping("/advice/category/{categoryName}")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> getAdviceByCategory(
            @PathVariable String categoryName) {
        List<AdviceResponse> list = adviceService.getAdviceByCategory(categoryName);
        if (list.isEmpty()) {
            return ResponseEntity.ok(ApiResponse.error("No advice found for category: " + categoryName));
        }
        return ResponseEntity.ok(ApiResponse.success(list, "Advice for " + categoryName, list.size()));
    }

    /**
     * GET /api/advice/random
     * Returns one random advice from the entire database.
     */
    @GetMapping("/advice/random")
    public ResponseEntity<ApiResponse<AdviceResponse>> getRandomAdvice() {
        AdviceResponse advice = adviceService.getRandomAdvice();
        if (advice == null) {
            return ResponseEntity.ok(ApiResponse.error("No advice available"));
        }
        return ResponseEntity.ok(ApiResponse.success(advice, "Random advice of the day!", 1));
    }

    /**
     * GET /api/advice/random/{categoryName}
     * Returns one random advice from a specific category.
     */
    @GetMapping("/advice/random/{categoryName}")
    public ResponseEntity<ApiResponse<AdviceResponse>> getRandomAdviceByCategory(
            @PathVariable String categoryName) {
        AdviceResponse advice = adviceService.getRandomAdviceByCategory(categoryName);
        if (advice == null) {
            return ResponseEntity.ok(ApiResponse.error("No advice found for: " + categoryName));
        }
        return ResponseEntity.ok(ApiResponse.success(advice, "Random advice from " + categoryName, 1));
    }

    /**
     * GET /api/advice/urgency/{level}
     * Filter advice by urgency: LOW, MEDIUM, HIGH, CRITICAL
     */
    @GetMapping("/advice/urgency/{level}")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> getByUrgency(@PathVariable String level) {
        List<AdviceResponse> list = adviceService.getAdviceByUrgency(level);
        return ResponseEntity.ok(ApiResponse.success(list, "Advice with urgency: " + level, list.size()));
    }

    /**
     * GET /api/advice/difficulty/{level}
     * Filter advice by difficulty: BEGINNER, INTERMEDIATE, ADVANCED
     */
    @GetMapping("/advice/difficulty/{level}")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> getByDifficulty(@PathVariable String level) {
        List<AdviceResponse> list = adviceService.getAdviceByDifficulty(level);
        return ResponseEntity.ok(ApiResponse.success(list, "Advice at difficulty: " + level, list.size()));
    }

    // ─────────────────────────────────────────────────────────────────────────
    // SEARCH
    // ─────────────────────────────────────────────────────────────────────────

    /**
     * POST /api/advice/search
     * Search advice using keyword, category, urgencyLevel, difficulty.
     * Body: { "keyword": "...", "category": "...", "urgencyLevel": "...", "difficulty": "..." }
     */
    @PostMapping("/advice/search")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> searchAdvice(
            @RequestBody SearchRequest request) {
        List<AdviceResponse> results = adviceService.search(request);
        String msg = results.isEmpty()
                ? "No results found. Try different keywords."
                : "Found " + results.size() + " result(s).";
        return ResponseEntity.ok(ApiResponse.success(results, msg, results.size()));
    }

    /**
     * GET /api/advice/search?q=keyword
     * Quick search via query param.
     */
    @GetMapping("/advice/search")
    public ResponseEntity<ApiResponse<List<AdviceResponse>>> quickSearch(
            @RequestParam(required = false) String q,
            @RequestParam(required = false) String category) {
        SearchRequest request = new SearchRequest(q, category, null, null);
        List<AdviceResponse> results = adviceService.search(request);
        String msg = results.isEmpty() ? "No results found." : "Found " + results.size() + " result(s).";
        return ResponseEntity.ok(ApiResponse.success(results, msg, results.size()));
    }

    // ─────────────────────────────────────────────────────────────────────────
    // STATS & HISTORY
    // ─────────────────────────────────────────────────────────────────────────

    /**
     * GET /api/stats
     * Returns overall statistics about the advice database.
     */
    @GetMapping("/stats")
    public ResponseEntity<ApiResponse<Map<String, Object>>> getStats() {
        List<CategoryResponse> cats = adviceService.getAllCategories();
        long totalAdvice = adviceService.getTotalAdviceCount();

        Map<String, Object> stats = Map.of(
                "totalAdvice", totalAdvice,
                "totalCategories", cats.size(),
                "categories", cats
        );
        return ResponseEntity.ok(ApiResponse.success(stats, "Stats fetched", 1));
    }

    /**
     * GET /api/history
     * Returns the last 10 user queries.
     */
    @GetMapping("/history")
    public ResponseEntity<ApiResponse<List<UserQuery>>> getQueryHistory() {
        List<UserQuery> history = adviceService.getRecentQueries();
        return ResponseEntity.ok(ApiResponse.success(history, "Recent query history", history.size()));
    }
}
