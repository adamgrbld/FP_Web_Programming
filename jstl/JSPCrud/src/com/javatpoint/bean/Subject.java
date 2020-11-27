package com.javatpoint.bean;

public class Subject {
private int id,semester;
private String name,lecturer,description;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getLecturer() {
	return lecturer;
}
public void setLecturer(String lecturer) {
	this.lecturer = lecturer;
}
public int getSemester() {
	return semester;
}
public void setSemester(int semester) {
	this.semester = semester;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
}
