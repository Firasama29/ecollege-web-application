package com.ecollege.dto;

import java.io.Serializable;
import java.util.Date;

public class ProfileDTO implements Serializable{

	private static final long serialVersionUID = 5181740177430426190L;
	
	private long studentId;
	private String studentName;
	private String email;
	private String confirmEmail;
	private String password;
	private String confirmPassword;
	private String nationality;
	private Date intake;
	private String course;
	private int currentYear;
	private int age;
	
	public ProfileDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProfileDTO(long studentId, String studentName, String email, String confirmEmail, String password,
			String confirmPassword, String nationality, Date intake, String course, int currentYear, int age) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.email = email;
		this.confirmEmail = confirmEmail;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.nationality = nationality;
		this.intake = intake;
		this.course = course;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getConfirmEmail() {
		return confirmEmail;
	}

	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Date getIntake() {
		return intake;
	}

	public void setIntake(Date intake) {
		this.intake = intake;
	}

	public String getCourse() {
		return course;
	}

	public void setGraduationYear(String course) {
		this.course = course;
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
		return "ProfileDTO [studentId=" + studentId + ", studentName=" + studentName + ", email=" + email
				+ ", confirmEmail=" + confirmEmail + ", password=" + password + ", confirmPassword=" + confirmPassword
				+ ", nationality=" + nationality + ", intake=" + intake + ", currentYear=" + currentYear + ", age=" + age + "]";
	}
}
