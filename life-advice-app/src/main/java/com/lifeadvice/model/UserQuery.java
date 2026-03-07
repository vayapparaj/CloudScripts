package com.lifeadvice.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "user_queries")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserQuery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 1000)
    private String queryText;

    @Column(length = 100)
    private String categorySearched;

    @Column
    private Integer resultsFound;

    @CreationTimestamp
    private LocalDateTime queriedAt;
}
