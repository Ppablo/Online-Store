package com.onlinestore.domain.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity(name = "Inventory")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class InventoryEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "producto_id", nullable = false)
    private ProductEntity product; // Cambia 'productId' a 'product' para coincidir con 'mappedBy' en 'ProductEntity'

    @Column(name = "cantidad", nullable = false)
    private int quantity;

}

