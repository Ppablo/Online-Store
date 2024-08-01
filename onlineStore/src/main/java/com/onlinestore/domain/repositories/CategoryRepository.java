package com.onlinestore.domain.repositories;

import com.onlinestore.domain.entities.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {
    @Query("select c.name from Categories c")
    List<String> allCategories();
}
