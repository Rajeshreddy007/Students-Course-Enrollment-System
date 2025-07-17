package com.SpringBoot.Controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.SpringBoot.Entities.Courses;
import com.SpringBoot.Entities.Enrollments;
import com.SpringBoot.Entities.Students;
import com.SpringBoot.Service.CourseServiceImp;
import com.SpringBoot.Service.EnrollmentServiceImp;
import com.SpringBoot.Service.StudentServiceImp;

@Controller
public class StudentController {

	@Autowired
	private StudentServiceImp studentService;

	@Autowired
	private CourseServiceImp courseService;

	@Autowired
	private EnrollmentServiceImp enrollmentService;

	@PostMapping("/student/register")
	public String registerStudent(@ModelAttribute Students student, Model model) {
		try {
			studentService.registerStudent(student);
			model.addAttribute("name", student.getS_name());
			return "RegistrationSuccessfull";
		} catch (Exception e) {
			return "RegistrationFail";
		}
	}

	@PostMapping("/student/login")
	public String loginStudent(@ModelAttribute Students student, Model model) {
		Students studentDetails = studentService.findByEmail(student.getS_email());

		if (studentDetails != null && studentDetails.getS_password().equals(student.getS_password())) {

			List<Courses> courses = courseService.getAllCourse();
			model.addAttribute("student", studentDetails);
			model.addAttribute("availableCourses", courses);
			return "LoginSuccess"; 
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "LoginError";
		}
	}

	@PostMapping("/student/courseEnroll")
	public String registerMultipleCourses(@RequestParam("studentId") Long studentId,
			@RequestParam("selectedCourses") List<Long> selectedCourseIds, Model model) {

		Students student = studentService.getStudentById(studentId);
		List<Courses> allCourses = courseService.CSeats();
		List<String> messages = new ArrayList<>();
		model.addAttribute("student", student);
		model.addAttribute("availableCourses", allCourses);

		try {
			for (Long courseId : selectedCourseIds) {
				Courses course = courseService.getCourseById(courseId);

				if (course.getC_seats() > 0) {
					Enrollments enrollment = new Enrollments();
					enrollment.setStudent(student);
					enrollment.setCourse(course);
					enrollment.setEnrolledOn(LocalDateTime.now());
					enrollmentService.saveEnrollment(enrollment);

					course.setC_seats(course.getC_seats() - 1);
					courseService.updateCourse(course);

					messages.add("Enrolled in: " + course.getC_name());
				} else {
					messages.add("Enrollment failed (Course full): " + course.getC_name());
				}
			}

			model.addAttribute("messages", messages);

			return "EnrollSuccess";

		} catch (Exception e) {
			messages.add("Enrollment failed due to Duplicate Course Enrollment.");
			model.addAttribute("messages", messages);
			return "EnrollFail";
		}
	}

}
