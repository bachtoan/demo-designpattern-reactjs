package com.example.demo.services.serviceInterfaces;

import com.example.demo.models.ProductModel;
import java.util.List;


public interface IProductService  {
    List<ProductModel> getAllProduct();
    ProductModel getProductById(int productId);
    void createProduct(ProductModel product);
}
