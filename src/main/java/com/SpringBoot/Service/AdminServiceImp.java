package com.SpringBoot.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Entities.Admin;
import com.SpringBoot.Repository.AdminRepo;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired
	private AdminRepo adminRepo;

	@Override
	public Admin findById(long a_id) {
		return adminRepo.findById(a_id).get();
	}

	public Admin findByEmail(String a_email) {
		return adminRepo.findByAEmail(a_email);
	}

}
