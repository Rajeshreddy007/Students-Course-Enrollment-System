package com.SpringBoot.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Entities.Courses;
import com.SpringBoot.Repository.CoursesRepo;

@Service
public class CourseServiceImp implements CourseService {

	@Autowired
	private CoursesRepo coursesRepo;

	@Override
	public Courses addCourse(Courses course) {
		return coursesRepo.save(course);
	}

	@Override
	public Courses getCourseById(Long id) {
		return coursesRepo.findById(id).get();
	}

	@Override
	public List<Courses> getAllCourse() {
		return coursesRepo.findAll();
	}

	@Override
	public Courses updateCourse(Courses course) {
		return coursesRepo.save(course);
	}

	@Override
	public void deleteCourse(Long id) {
		coursesRepo.deleteById(id);
	}

	public List<Courses> CSeats() {
		return coursesRepo.CSeats();
	}

}
