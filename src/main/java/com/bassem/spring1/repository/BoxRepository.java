package com.bassem.spring1.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bassem.spring1.model.Box;

@Repository
public interface BoxRepository extends JpaRepository<Box, Integer> {
	
	public List<Box> findByShipmentId(Integer id);

}
