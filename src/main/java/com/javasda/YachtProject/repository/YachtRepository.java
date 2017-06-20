package com.javasda.YachtProject.repository;

import com.javasda.YachtProject.model.Yacht;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface YachtRepository extends CrudRepository<Yacht, Long> {

        Yacht findYachtByName(String yachtName);

}
