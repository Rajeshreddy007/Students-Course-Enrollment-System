package com.SpringBoot.Service;

import java.util.List;

import com.SpringBoot.Entities.Courses;

public interface CourseService {

	public Courses addCourse(Courses course);

	public Courses getCourseById(Long id);

	public List<Courses> getAllCourse();

	public Courses updateCourse(Courses student);

	public void deleteCourse(Long id);

}
