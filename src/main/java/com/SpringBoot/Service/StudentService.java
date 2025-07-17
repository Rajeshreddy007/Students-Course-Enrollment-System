package com.SpringBoot.Service;

import java.util.List;
import com.SpringBoot.Entities.Students;

public interface StudentService {

	public Students registerStudent(Students student);

	public Students getStudentById(Long id);

	public List<Students> getAllStudents();

	public Students updateStudent(Students student);

	public void deleteStudent(Long id);
}
