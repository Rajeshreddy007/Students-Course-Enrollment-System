package com.SpringBoot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringBoot.Entities.Students;

public interface StudentsRepo extends JpaRepository<Students, Long> {
	public Students findBySEmail(String s_email);
}
