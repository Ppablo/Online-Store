package com.onlinestore.domain.entities;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "Categories")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class CategoryEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "nombre", nullable = false)
    private String name;

    @OneToMany(
            cascade = CascadeType.ALL,
            fetch = FetchType.EAGER,
            orphanRemoval = true,
            mappedBy = "category" // Especifica que 'category' es la propiedad en 'ProductEntity' que posee la relación.
    )
    @ToString.Exclude
    private List<ProductEntity> productList = new ArrayList<>();

}