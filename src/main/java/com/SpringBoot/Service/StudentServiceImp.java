package com.SpringBoot.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Entities.Students;
import com.SpringBoot.Repository.StudentsRepo;

@Service
public class StudentServiceImp implements StudentService {

	@Autowired
	private StudentsRepo studentsRepo;

	@Override
	public Students registerStudent(Students student) {
		return studentsRepo.save(student);
	}

	@Override
	public Students getStudentById(Long id) {
		return studentsRepo.findById(id).get();
	}

	@Override
	public List<Students> getAllStudents() {
		return studentsRepo.findAll();
	}

	@Override
	public Students updateStudent(Students student) {
		return studentsRepo.save(student);
	}

	@Override
	public void deleteStudent(Long id) {
		studentsRepo.deleteById(id);
	}

	public Students findByEmail(String email) {
		return studentsRepo.findBySEmail(email);
	}

}
