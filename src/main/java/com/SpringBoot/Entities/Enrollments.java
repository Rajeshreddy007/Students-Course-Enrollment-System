package com.SpringBoot.Entities;

import java.time.LocalDateTime;
import jakarta.persistence.*;

@Entity
@Table(name = "enrollments", uniqueConstraints = { @UniqueConstraint(columnNames = { "student_id", "course_id" }) })
public class Enrollments {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "student_id", nullable = false)
	private Students student;

	@ManyToOne
	@JoinColumn(name = "course_id", nullable = false)
	private Courses course;

	@Column(name = "enrolled_on", nullable = false)
	private LocalDateTime enrolledOn = LocalDateTime.now(); // auto-set on creation

	public Enrollments() {
		System.out.println("Enrollments Class Constructor");
	}

	// Getters and Setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Students getStudent() {
		return student;
	}

	public void setStudent(Students student) {
		this.student = student;
	}

	public Courses getCourse() {
		return course;
	}

	public void setCourse(Courses course) {
		this.course = course;
	}

	public LocalDateTime getEnrolledOn() {
		return enrolledOn;
	}

	public void setEnrolledOn(LocalDateTime enrolledOn) {
		this.enrolledOn = enrolledOn;
	}

	@Override
	public String toString() {
		return "Enrollments [id=" + id + ", student_id=" + student.getS_id() + ", course_id=" + course.getC_id()
				+ ", enrolledOn=" + enrolledOn + "]";
	}
}
