package com.bassem.spring1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bassem.spring1.model.Shipment;

@Repository
public interface ShipmentRepository extends JpaRepository<Shipment, Integer> {

}
