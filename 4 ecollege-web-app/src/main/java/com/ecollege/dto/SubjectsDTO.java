package com.ecollege.dto;

import java.io.Serializable;

public class SubjectsDTO implements Serializable {

	private static final long serialVersionUID = -8649938956766844377L;
	
	private long subjectId;
	private String subjectName;
	private String faculty;
	private int assignments;
	private int tests;
	
	public SubjectsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SubjectsDTO(long subjectId, String subjectName, String faculty, int assignments, int tests) {
		super();
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.faculty = faculty;
		this.assignments = assignments;
		this.tests = tests;
	}
	
	public long getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(long subjectId) {
		this.subjectId = subjectId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	public int getAssignments() {
		return assignments;
	}
	public void setAssignments(int assignments) {
		this.assignments = assignments;
	}
	public int getTests() {
		return tests;
	}
	public void setTests(int tests) {
		this.tests = tests;
	}
	
	@Override
	public String toString() {
		return "SubjectsDTO [subjectId=" + subjectId + ", subjectName=" + subjectName + ", faculty=" + faculty
				+ ", assignments=" + assignments + ", tests=" + tests + "]";
	}
}
