package com.onlinestore.domain.repositories;

import com.onlinestore.domain.entities.SupplierEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SupplierRepository extends JpaRepository<SupplierEntity,Long> {
}
