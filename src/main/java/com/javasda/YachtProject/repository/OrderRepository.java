package com.javasda.YachtProject.repository;

import com.javasda.YachtProject.model.Order;
import com.javasda.YachtProject.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<Order, Long> {


}
