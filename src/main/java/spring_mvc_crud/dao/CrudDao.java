package spring_mvc_crud.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring_mvc_crud.dto.Employee;

@Component
public class CrudDao {
	@Autowired
	EntityManager manager;

	public void saveEmployee(Employee employee) {
		manager.getTransaction().begin();
		manager.persist(employee);
		manager.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() {
		return manager.createQuery("select x from Employee x").getResultList();
	}
	
	public Employee findById(long id) {
		return manager.find(Employee.class, id);
	}
	
	public void deleteAnEmployeeDetail(Employee emp)
	{
		manager.getTransaction().begin();
		manager.remove(emp);
		manager.getTransaction().commit();
	}
	
	public void editAnEmployee(Employee emp)
	{
		manager.getTransaction().begin();
		manager.merge(emp);
		manager.getTransaction().commit();
	}

}
