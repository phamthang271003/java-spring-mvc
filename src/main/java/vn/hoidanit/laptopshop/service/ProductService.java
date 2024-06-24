package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> handleGetAllProduct() {
        return this.productRepository.findAll();
    }

    public Optional<Product> handleGetProductById(Long id) {
        return this.productRepository.findById(id);
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public void handleDeleteProductById(Long id) {
        this.productRepository.deleteById(id);
    }
}
