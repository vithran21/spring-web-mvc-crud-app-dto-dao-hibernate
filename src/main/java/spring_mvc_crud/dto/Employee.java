package spring_mvc_crud.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	long id;
	// var names should match with html name attribute
	String name;
	long mobile;
	String domain;
	String email;
	double salary;

}
