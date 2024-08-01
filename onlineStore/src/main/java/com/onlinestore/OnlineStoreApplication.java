package com.onlinestore;

import com.onlinestore.domain.entities.CategoryEntity;
import com.onlinestore.domain.repositories.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.yaml.snakeyaml.util.ArrayUtils;

import java.util.List;
import java.util.Objects;

@Slf4j
@SpringBootApplication
public class OnlineStoreApplication implements CommandLineRunner {

    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private InventoryRepository inventoryRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private SupplierRepository supplierRepository;

    public static void main(String[] args) {
        SpringApplication.run(OnlineStoreApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        var inventario = this.inventoryRepository.findById(3L).get();
        log.info(String.valueOf(inventario));
        List<String> allCategories = categoryRepository.allCategories();
        allCategories.forEach(log::info);
        log.info("--------------------------------------------------");
        Object price = this.productRepository.allValuePerProduct(1L);

        log.info("--------------------------------------------------");
        this.productRepository.findByPriceLessThan(100.00).forEach(System.out::println);
        final CategoryEntity category = new CategoryEntity().builder().id(7L).name("automotriz").build();
        categoryRepository.save(category);
    }
}
