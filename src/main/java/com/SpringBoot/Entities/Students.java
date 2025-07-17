package com.SpringBoot.Entities;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "students")
public class Students {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_id")
	private long s_id;

	@Column(name = "student_uid", nullable = false, unique = true)
	private String s_uid;

	@Column(name = "full_name", nullable = false)
	private String s_name;

	@Column(name = "gender", nullable = false)
	private String gender;

	@Column(name = "dob", nullable = false)
	private LocalDate dob;

	@Column(name = "batch", nullable = false)
	private String batch;

	@Column(name = "department", nullable = false)
	private String department;

	@Column(name = "student_email", unique = true, nullable = false)
	private String SEmail;

	@Column(name = "phone", nullable = false)
	private String phone;

	@Column(name = "student_password", nullable = false)
	private String s_password;

	@Column(name = "city", nullable = false)
	private String city;

	// Student -> Enrollment (One-to-Many)
	@OneToMany(mappedBy = "student", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Enrollments> enrollments;

	public Students() {
		System.out.println("Students class constructor");
	}

	public long getS_id() {
		return s_id;
	}

	public void setS_id(long s_id) {
		this.s_id = s_id;
	}

	public String getS_uid() {
		return s_uid;
	}

	public void setS_uid(String s_uid) {
		this.s_uid = s_uid;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getS_email() {
		return SEmail;
	}

	public void setS_email(String s_email) {
		this.SEmail = s_email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getS_password() {
		return s_password;
	}

	public void setS_password(String s_password) {
		this.s_password = s_password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public List<Enrollments> getEnrollments() {
		return enrollments;
	}

	public void setEnrollments(List<Enrollments> enrollments) {
		this.enrollments = enrollments;
	}

	@Transient
	public int getCoursesEnrolled() {
		return (enrollments != null) ? enrollments.size() : 0;
	}

	@Override
	public String toString() {
		return "Students [s_id=" + s_id + ", s_uid=" + s_uid + ", s_name=" + s_name + ", gender=" + gender + ", dob="
				+ dob + ", batch=" + batch + ", department=" + department + ", s_email=" + SEmail + ", phone=" + phone
				+ ", city=" + city + ", coursesEnrolled=" + getCoursesEnrolled() + "]";
	}
}
