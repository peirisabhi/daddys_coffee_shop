package com.abhipeiris.api.controllers;

import com.abhipeiris.api.models.OrderModel;
import com.abhipeiris.api.repositories.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/api/order")
public class OrderController {

    @Autowired
    OrderRepository orderRepository;

    @GetMapping()
    public List<OrderModel> getAllOrder(){
        return orderRepository.findAll();
    }

    @PostMapping()
    public OrderModel addOrder(@RequestBody OrderModel orderModel){
        return orderRepository.save(orderModel);
    }

}
