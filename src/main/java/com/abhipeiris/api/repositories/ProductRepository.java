package com.abhipeiris.api.repositories;

import com.abhipeiris.api.models.ProductModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<ProductModel, Integer> {
    List<ProductModel> findByStatus(String status);
}
