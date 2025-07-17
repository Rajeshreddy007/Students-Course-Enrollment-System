package com.SpringBoot.Entities;

import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "courses")
public class Courses {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "course_id")
	private long c_id;

	@Column(name = "course_name", nullable = false, unique = true)
	private String c_name;

	@Column(name = "course_code", nullable = false, unique = true)
	private String c_code;

	@Column(name = "credits")
	private int credits;

	@Column(name = "hours")
	private int hours;

	@Column(name = "instructor")
	private String instructor;

	@Column(name = "description")
	private String c_description;

	@Column(name = "prerequisites")
	private String prerequisites;

	@Column(name = "seats")
	private int c_seats;

	@OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Enrollments> enrollments;

	public Courses() {
		System.out.println("Courses class constructor");
	}

	// Getters and Setters

	public long getC_id() {
		return c_id;
	}

	public void setC_id(long c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
	}

	public int getCredits() {
		return credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}

	public String getInstructor() {
		return instructor;
	}

	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}

	public String getC_description() {
		return c_description;
	}

	public void setC_description(String c_description) {
		this.c_description = c_description;
	}

	public String getPrerequisites() {
		return prerequisites;
	}

	public void setPrerequisites(String prerequisites) {
		this.prerequisites = prerequisites;
	}

	public int getC_seats() {
		return c_seats;
	}

	public void setC_seats(int c_seats) {
		this.c_seats = c_seats;
	}

	@Override
	public String toString() {
		return "Courses [c_id=" + c_id + ", c_name=" + c_name + ", c_code=" + c_code + ", credits=" + credits
				+ ", hours=" + hours + ", instructor=" + instructor + ", c_description=" + c_description
				+ ", prerequisites=" + prerequisites + ", c_seats=" + c_seats + "]";
	}
}
