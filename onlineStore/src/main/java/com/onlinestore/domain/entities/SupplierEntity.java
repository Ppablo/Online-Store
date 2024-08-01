package com.onlinestore.domain.entities;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "suppliers")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class SupplierEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "nombre", nullable = false)
    private String name;

    @Column(name = "contacto")
    private String contact;

    @ManyToMany(mappedBy = "supplierList")
    @ToString.Exclude
    private List<ProductEntity> productList = new ArrayList<>();
}

