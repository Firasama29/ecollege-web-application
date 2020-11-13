package com.ecollege.dto;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class StudentsDTO implements Serializable {

	private static final long serialVersionUID = -3346163208125732203L;

	private long studentId;
	private String studentName;
	private String nationality;
	private String course;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date intake;
	private int currentYear;
	private int age;
	
	public StudentsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudentsDTO(long studentId, String studentName, String nationality, String course,
			Date intake, int currentYear, int age) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.nationality = nationality;
		this.course = course;
		this.intake = intake;
		this.currentYear = currentYear;
		this.age = age;
	}

	public long getStudentId() {
		return studentId;
	}

	public void setStudentId(long studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public Date getIntake() {
		return intake;
	}

	public void setIntake(Date intake) {
		this.intake = intake;
	}
	
	public int getCurrentYear() {
		return currentYear;
	}

	public void setCurrentYear(int currentYear) {
		this.currentYear = currentYear;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "StudentsDTO [studentId=" + studentId + ", studentName=" + studentName + ", nationality=" + nationality
				+ "course" + course + "intake" + intake +", currentYear=" + currentYear + ", age=" + age + "]";
	}
}
