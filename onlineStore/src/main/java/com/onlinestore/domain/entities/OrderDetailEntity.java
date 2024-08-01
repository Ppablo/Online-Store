package com.onlinestore.domain.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity(name = "order_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class OrderDetailEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @Column(name = "pedido_id", nullable = false)
    private String orderId;
    @ManyToOne
    @JoinColumn(name = "producto_id", nullable = false)
    private ProductEntity product;
    @Column(name = "cantidad", nullable = false)
    private Long quantity;
    @Column(name = "precio", nullable = false)
    private Double price;

}
