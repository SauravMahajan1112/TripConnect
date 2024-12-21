package com.saurav.TripConnects.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saurav.TripConnects.dao.TravelDao;
import com.saurav.TripConnects.entity.Travel;

@Service
public class TravelService {
	@Autowired
	private TravelDao td;

	public String inserttravel(Travel travel) {
		String msg = td.inserttravel(travel);
		return msg;
	}

	public List<Travel> travellist() {
		List<Travel> plist = td.travellist();
		return plist;
	}

	public String deletetravel(int pk) {
		String msg = td.deletetravel(pk);
		return msg;

	}

	public Travel gettravel(int pk) {
		Travel travel = td.gettravel(pk);
		return travel;
	}

	public String updateTraveler(Travel travel) {
		String msg = td.updateTraveler(travel);
		return msg;
	}

}
