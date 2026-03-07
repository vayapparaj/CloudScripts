package com.lifeadvice.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "life_advice")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LifeAdvice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 500)
    private String question;

    @Column(nullable = false, length = 3000)
    private String answer;

    @Column(length = 500)
    private String tips;

    @Column(length = 300)
    private String tags;

    @Column(length = 100)
    private String difficulty; // BEGINNER, INTERMEDIATE, ADVANCED

    @Column(length = 100)
    private String urgencyLevel; // LOW, MEDIUM, HIGH, CRITICAL

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @CreationTimestamp
    private LocalDateTime createdAt;
}
