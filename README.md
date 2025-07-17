# 🎓 Course Management System - Spring Boot Project

A web-based **Course Management System** built using **Spring Boot**, **JSP**, **MySQL**, and **Bootstrap** that enables an **Admin** to manage courses and students, and allows **Students** to enroll in courses.

## 📌 Features

### 🔐 Admin Module
- Admin login and dashboard
- Add new courses with full details (code, name, credits, instructor, seats, etc.)
- Delete multiple courses at once with confirmation and result summary
- View enrolled students and their course details
- View list of all student registrations

### 🎓 Student Module (Optional for Future Extension)
- Student login/registration
- View available courses
- Enroll in multiple courses (1-to-many relationship)

## 🧱 Technologies Used

| Layer        | Technology             |
|--------------|------------------------|
| Backend      | Spring Boot (MVC)      |
| View         | JSP, JSTL, Bootstrap 5 |
| Database     | MySQL                  |
| ORM          | Spring Data JPA / Hibernate |
| Build Tool   | Maven                  |

## 🗂️ Project Structure

com.SpringBoot

├── Application.java

├── Controller

│ └── StudentController.java

│ └── AdminController.java

├── Entities

│ ├── Courses.java

│ ├── Students.java

│ └── Enrollments.java

├── Repository

│ ├── CourseRepository.java

│ ├── StudentRepository.java

│ └── EnrollmentRepository.java

├── Service

│ ├── CourseServiceImp.java

│ ├── StudentServiceImp.java

│ └── EnrollmentServiceImp.java


## 💾 Database Schema

### `courses` Table
- `course_id` (PK, Auto Increment)
- `course_code`, `course_name`, `credits`, `instructor`, `description`, `seats`, etc.

### `students` Table
- `student_id` (PK, Auto Increment)
- 'student_uid`, `full_name`, `dob`, `department', 'gender', 'email', 'password', 'city' etc.

### `enrollments` Table
- Many-to-Many relation resolver (Student ⇄ Course)
- 'id`, `student_id`, `course_id`, `date`

### `Admins` Table
- `Admin_id` (PK, Auto Increment)
- 'full_name`, 'email', `password`.

## 📌 TODO
- Add authentication for students
- Pagination for course and student listings
- Export course/student/enrollment reports as CSV
-  Unit & integration tests

## 👨‍💻 Author
- Kumbam Raja Rajesh Reddy
- 📧 rajeshreddykumbam948@outlook.com

## 📜 License
- This project is licensed under the MIT License.


