package com.SpringBoot.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Entities.Courses;
import com.SpringBoot.Entities.Enrollments;
import com.SpringBoot.Entities.Students;
import com.SpringBoot.Repository.EnrollmentsRepo;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class EnrollmentServiceImp implements EnrollmentService {

	@Autowired
	private EnrollmentsRepo enrollmentRepo;

	@Override
	public Enrollments findById(long id) {
		return enrollmentRepo.findById(id).orElse(null);
	}

	@Override
	public void enroll(Students student, Courses course) {
		Enrollments enrollment = new Enrollments();
		enrollment.setStudent(student);
		enrollment.setCourse(course);
		enrollment.setEnrolledOn(LocalDateTime.now());
		enrollmentRepo.save(enrollment);
	}

	@Override
	public void saveEnrollment(Enrollments enrollment) {
		enrollmentRepo.save(enrollment);
	}

	public void deleteByCourseId(Long c_Id) {
		enrollmentRepo.deleteById(c_Id);
	}

	@Override
	public boolean hasEnrollments(Long courseId) {
		return enrollmentRepo.existsById(courseId);
	}

	@Override
	public List<Enrollments> getAllEnrollments() {
		return enrollmentRepo.findAll();
	}

}
