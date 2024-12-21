package com.saurav.TripConnects.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saurav.TripConnects.entity.Travel;

@Repository
public class TravelDao {
	@Autowired
	private SessionFactory sf;

	public String inserttravel(Travel travel) {
		try {
			Session openSession = sf.openSession();
			Transaction beginTransaction = openSession.beginTransaction();
			openSession.save(travel);
			beginTransaction.commit();
			openSession.close();
			return "Traveler Add Susscesfully";
		} catch (Exception e) {

			return "Something Went Wrong...";
		}
	}

	public List<Travel> travellist() {
		List<Travel> plist = null;
		try {
			Session openSession = sf.openSession();
			Criteria criteria = openSession.createCriteria(Travel.class);
			plist = criteria.list();
			return plist;
		} catch (Exception e) {

			return plist;
		}
	}

	public String deletetravel(int pk) {
		try {
			Session openSession = sf.openSession();
			Transaction beginTransaction = openSession.beginTransaction();
			Travel travel = openSession.get(Travel.class, pk);
			openSession.delete(travel);
			beginTransaction.commit();
			openSession.close();
			return "Traveler deleted Susscesfully";
		} catch (Exception e) {

			return "Something Went Wrong...";
		}
	}

	public Travel gettravel(int pk) {
		try {
			Session openSession = sf.openSession();
			Transaction beginTransaction = openSession.beginTransaction();
			Travel travel = openSession.get(Travel.class, pk);
			openSession.close();
			return travel;
		} catch (Exception e) {

			return null;
		}

	}

	public String updateTraveler(Travel travel) {
		try {
			Session openSession = sf.openSession();
			Transaction beginTransaction = openSession.beginTransaction();
			openSession.update(travel);
			beginTransaction.commit();
			openSession.close();
			return "Traveler Updated Susscesfully";
		} catch (Exception e) {

			return "Something Went Wrong...";
		}
	}

}
