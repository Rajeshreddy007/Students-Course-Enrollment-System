package com.SpringBoot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringBoot.Entities.Admin;

public interface AdminRepo extends JpaRepository<Admin, Long> {
	public Admin findByAEmail(String a_email);
}
