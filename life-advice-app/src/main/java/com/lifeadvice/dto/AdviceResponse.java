package com.lifeadvice.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AdviceResponse {
    private Long id;
    private String question;
    private String answer;
    private String tips;
    private String tags;
    private String difficulty;
    private String urgencyLevel;
    private String categoryName;
    private String categoryEmoji;
    private LocalDateTime createdAt;
}
