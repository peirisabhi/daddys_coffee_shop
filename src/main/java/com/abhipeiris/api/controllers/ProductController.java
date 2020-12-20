package com.abhipeiris.api.controllers;

import com.abhipeiris.api.models.ProductModel;
import com.abhipeiris.api.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/api/product")
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    //get active products
    @GetMapping()
    public List<ProductModel> getAllActiveProducts(){
        return productRepository.findByStatus("1");
    }

    // add new product
    @PostMapping()
    public ProductModel addProduct(@RequestBody ProductModel productModel){
        return productRepository.save(productModel);
    }



}
