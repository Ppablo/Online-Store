package com.onlinestore.domain.repositories;

import com.onlinestore.domain.entities.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Objects;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {

    @Query("select p.name, i.quantity, p.price, (i.quantity * p.price) as multiplicación from Products p inner join Inventory i on p.id = i.product.id where p.id = :id")
    Object allValuePerProduct(final Long id);

    List<ProductEntity> findByPriceLessThan(final Double price);
}
