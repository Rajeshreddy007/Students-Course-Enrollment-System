package com.SpringBoot.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringBoot.Entities.Courses;

public interface CoursesRepo extends JpaRepository<Courses, Long> {

	@Query(value = "SELECT * FROM courses c WHERE c.seats>0", nativeQuery = true)
	public List<Courses> CSeats();

}
