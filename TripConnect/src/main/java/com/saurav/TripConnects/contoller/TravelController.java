package com.saurav.TripConnects.contoller;

import java.util.List;

import javax.persistence.metamodel.StaticMetamodel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.saurav.TripConnects.entity.Travel;
import com.saurav.TripConnects.service.TravelService;

@Controller
public class TravelController {
	@Autowired
	private TravelService ts;

	@GetMapping("/home-page")
	public String homePage() {
		return "index";
	}

	@GetMapping("/add-page")
	public String addPage() {
		return "add";
	}

	@PostMapping("/add-traveller")
	public String inserttravel(@ModelAttribute Travel travel) {
		String msg = ts.inserttravel(travel);
		System.out.println(travel);
		return "add";

	}

	@GetMapping("/display-traveller")
	public String travellist(Model model) {
		List<Travel> plist = ts.travellist();
		model.addAttribute("Travel", plist);
		return "Display";

	}

	@GetMapping("/delete-traveller")
	public String deletetravel(@RequestParam("id") int pk) {
		String msg = ts.deletetravel(pk);
		return "redirect:/display-traveller";

	}

	@GetMapping("/view-traveller")
	public String viewProduct(@RequestParam("id") int pk, Model model) {

		Travel travel = ts.gettravel(pk);
		model.addAttribute("t", travel);
		return "update";
	}
	@PostMapping("/update-traveller")
	public String updateTraveler(@ModelAttribute Travel travel) {
		String msg = ts.updateTraveler(travel);
		return "redirect:/display-traveller";
	}
}