package com.lifeadvice.repository;

import com.lifeadvice.model.UserQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserQueryRepository extends JpaRepository<UserQuery, Long> {
    List<UserQuery> findTop10ByOrderByQueriedAtDesc();
}
