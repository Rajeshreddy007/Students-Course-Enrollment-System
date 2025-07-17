package com.SpringBoot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.SpringBoot.Entities.Enrollments;

public interface EnrollmentsRepo extends JpaRepository<Enrollments, Long> {
	@Modifying
	@Query("DELETE FROM Enrollments e WHERE e.course.c_id = :courseId")
	void deleteByCourseId(@Param("courseId") Long courseId);
}
