package com.SpringBoot.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.SpringBoot.Entities.Admin;
import com.SpringBoot.Entities.Courses;
import com.SpringBoot.Entities.Enrollments;
import com.SpringBoot.Entities.Students;
import com.SpringBoot.Service.AdminServiceImp;
import com.SpringBoot.Service.CourseServiceImp;
import com.SpringBoot.Service.EnrollmentServiceImp;
import com.SpringBoot.Service.StudentServiceImp;

import jakarta.transaction.Transactional;

@Controller
public class AdminController {

	@Autowired
	private AdminServiceImp adminService;

	@Autowired
	private CourseServiceImp courseService;

	@Autowired
	private EnrollmentServiceImp enrollmentService;

	@Autowired
	private StudentServiceImp studentService;

	@PostMapping("/admin/login")
	public String adminLogin(@ModelAttribute Admin admin, Model model) {
		Admin adminDetails = adminService.findByEmail(admin.getA_email());

		if (adminDetails != null && adminDetails.getA_password().equals(admin.getA_password())) {
			model.addAttribute("admin", adminDetails);
			return "AdminDashboard";
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "LoginError";
		}
	}

	@PostMapping("/admin/dashboard")
	public String adminDashboard() {
		return "AdminDashboard";
	}

	@PostMapping("/admin/addCourse")
	public String showAddCoursePage() {
		return "AddCourse";
	}

	@PostMapping("/admin/saveCourse")
	public String saveCourse(@ModelAttribute("course") Courses course, Model model) {
		try {
			courseService.addCourse(course);
			model.addAttribute("course", course);
			return "CourseAddSuccess";
		} catch (Exception e) {
			return "CourseAddFail";
		}
	}

	@PostMapping("/admin/manageCourses")
	public String showDeleteCoursesPage(Model model) {
		List<Courses> courses = courseService.getAllCourse();
		model.addAttribute("courses", courses);
		return "DeleteCourse";
	}

	@Transactional
	@PostMapping("/admin/deleteMultipleCourses")
	public String deleteMultipleCourses(@RequestParam(value = "courseIds", required = false) List<Long> courseIds,
			Model model) {
		if (courseIds == null || courseIds.isEmpty()) {
			model.addAttribute("message", "No courses selected to delete.");
			return "DeleteCourseResult";
		}

		List<Courses> deletedCourse = new ArrayList<>();

		for (Long courseId : courseIds) {
			Courses course = courseService.getCourseById(courseId);
			if (course != null) {
				deletedCourse.add(course);
				enrollmentService.deleteByCourseId(courseId);
				courseService.deleteCourse(courseId);
			}
		}

		model.addAttribute("message", "Selected courses deleted successfully.");
		model.addAttribute("deletedCourses", deletedCourse);
		return "DeleteCourseResult";
	}

	@PostMapping("/admin/viewStudents")
	public String viewStudents(Model model) {
		List<Students> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "ViewStudents";
	}

	@PostMapping("/admin/viewEnrollments")
	public String viewEnrollments(Model model) {
		List<Enrollments> enrollments = enrollmentService.getAllEnrollments();
		model.addAttribute("enrollments", enrollments);
		return "ViewEnrollments";
	}
}
