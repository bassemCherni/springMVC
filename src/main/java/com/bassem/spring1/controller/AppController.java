package com.bassem.spring1.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.bassem.spring1.model.Box;
import com.bassem.spring1.model.Shipment;
import com.bassem.spring1.repository.BoxRepository;
import com.bassem.spring1.repository.ShipmentRepository;

@Controller
@Transactional
public class AppController {
	
	@Autowired
	private BoxRepository boxRepo;

	@Autowired
	private ShipmentRepository shipRepo;
	
	@GetMapping(value = "/home")
	public String home(Model m) {
		List<Shipment> list_ship = shipRepo.findAll();
		m.addAttribute("list_ship", list_ship);
		return "home";
	}
	
	@GetMapping(value = "/box-list/{id}")
	public String listOfBox(Model m, @PathVariable(value = "id") Integer id) {
		Shipment sh = shipRepo.findOne(id);
		List<Box> list_box = boxRepo.findByShipmentId(id);
		m.addAttribute("sh", sh);
		m.addAttribute("list_box", list_box);
		return "box-list";
	}
	
	@GetMapping(value = "/add-shipment")
	public String addShip(Model m) {
		Shipment sh = new Shipment();
		m.addAttribute("ship", sh);
		return "addShipment";
	}
	
	@PostMapping(value = "/save-shipment")
	public String saveShip(Model m, @ModelAttribute("sh") Shipment sh) {
		shipRepo.save(sh);
		List<Shipment> list_ship = shipRepo.findAll();
		m.addAttribute("list_ship", list_ship);
		return "redirect:/home";
	}
	
	@GetMapping(value = "/add-box")
	public String addBox(Model m) {
		Box b = new Box();
		List<Shipment> list_ship = shipRepo.findAll();
		m.addAttribute("list_ship", list_ship);
		m.addAttribute("box", b);
		return "addBox";
	}
	
	@PostMapping(value = "/save-box")
	public String saveBox(Model m, @ModelAttribute("box") Box b) {
		boxRepo.save(b);
		List<Shipment> list_ship = shipRepo.findAll();
		m.addAttribute("list_ship", list_ship);
		return "redirect:/home";
	}
	
	
	
	
	
}
