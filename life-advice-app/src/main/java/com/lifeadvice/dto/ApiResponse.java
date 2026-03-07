package com.lifeadvice.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ApiResponse<T> {
    private boolean success;
    private String message;
    private T data;
    private int totalResults;
    private LocalDateTime timestamp;

    public static <T> ApiResponse<T> success(T data, String message, int total) {
        return ApiResponse.<T>builder()
                .success(true)
                .message(message)
                .data(data)
                .totalResults(total)
                .timestamp(LocalDateTime.now())
                .build();
    }

    public static <T> ApiResponse<T> error(String message) {
        return ApiResponse.<T>builder()
                .success(false)
                .message(message)
                .totalResults(0)
                .timestamp(LocalDateTime.now())
                .build();
    }
}
