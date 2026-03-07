package com.lifeadvice.repository;

import com.lifeadvice.model.LifeAdvice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LifeAdviceRepository extends JpaRepository<LifeAdvice, Long> {

    // Find by category name (case-insensitive)
    @Query("SELECT a FROM LifeAdvice a WHERE LOWER(a.category.name) = LOWER(:categoryName)")
    List<LifeAdvice> findByCategoryName(@Param("categoryName") String categoryName);

    // Full-text search across question, answer, and tags
    @Query("SELECT a FROM LifeAdvice a WHERE " +
           "LOWER(a.question) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(a.answer) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(a.tags) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<LifeAdvice> searchByKeyword(@Param("keyword") String keyword);

    // Search within a specific category
    @Query("SELECT a FROM LifeAdvice a WHERE " +
           "LOWER(a.category.name) = LOWER(:categoryName) AND (" +
           "LOWER(a.question) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(a.answer) LIKE LOWER(CONCAT('%', :keyword, '%')))")
    List<LifeAdvice> searchByCategoryAndKeyword(@Param("categoryName") String categoryName,
                                                @Param("keyword") String keyword);

    // Find by urgency level
    List<LifeAdvice> findByUrgencyLevelIgnoreCase(String urgencyLevel);

    // Find by difficulty
    List<LifeAdvice> findByDifficultyIgnoreCase(String difficulty);

    // Random advice
    @Query(value = "SELECT * FROM life_advice ORDER BY RAND() LIMIT 1", nativeQuery = true)
    LifeAdvice findRandomAdvice();

    // Random advice by category
    @Query(value = "SELECT a.* FROM life_advice a JOIN categories c ON a.category_id = c.id " +
                   "WHERE LOWER(c.name) = LOWER(:categoryName) ORDER BY RAND() LIMIT 1", nativeQuery = true)
    LifeAdvice findRandomAdviceByCategory(@Param("categoryName") String categoryName);

    // Count by category
    @Query("SELECT COUNT(a) FROM LifeAdvice a WHERE LOWER(a.category.name) = LOWER(:categoryName)")
    long countByCategoryName(@Param("categoryName") String categoryName);
}
