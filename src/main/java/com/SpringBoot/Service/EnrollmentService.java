package com.SpringBoot.Service;

import java.util.List;

import com.SpringBoot.Entities.Courses;
import com.SpringBoot.Entities.Enrollments;
import com.SpringBoot.Entities.Students;

public interface EnrollmentService {
	public Enrollments findById(long id);

	public void enroll(Students student, Courses course);

	public void saveEnrollment(Enrollments enrollment);

	boolean hasEnrollments(Long courseId);

	List<Enrollments> getAllEnrollments();
}
