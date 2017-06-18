package com.javasda.YachtProject.repository;

import com.javasda.YachtProject.model.Calendarr;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CalendarrRepository extends CrudRepository<Calendarr, Long> {

}
