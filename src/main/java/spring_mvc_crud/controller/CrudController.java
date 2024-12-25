package spring_mvc_crud.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring_mvc_crud.dao.CrudDao;
import spring_mvc_crud.dto.Employee;

@Controller
public class CrudController {

	@Autowired
	CrudDao crudDao;

	@GetMapping("/")
	public String loadHome() {
		return "home";
	}

	@GetMapping("add")
	public String loadAdd() {
		return "add";
	}

//	@PostMapping("add")
//	@ResponseBody
//	public String addEmp(@RequestParam String name, @RequestParam long mobile, @RequestParam String domain,
//			@RequestParam String email, @RequestParam double salary) {
//		return "Done";
//	}

	@PostMapping("add")
	public String addEmp(@ModelAttribute Employee employee, ModelMap map) {
		System.out.println(employee);
		crudDao.saveEmployee(employee);
		map.put("msg", "Data Saved Successfully.");
		return "home";
	}

	@GetMapping("fetch")
	public String fetchAllEmployess(ModelMap map) {
		List<Employee> empList = crudDao.getAllEmployees();
		map.put("allEmployees", empList);
		map.put("nodata", "No Employee Details available");
		return "fetch";
	}

	@GetMapping("deleteById")
	public String deleteAnEmployee(@RequestParam long id, ModelMap map) {
		crudDao.deleteAnEmployeeDetail(crudDao.findById(id));
		map.put("success", "Employee Detail deleted successfully");
		return fetchAllEmployess(map);
	}

	@GetMapping("edit")
	public String editAnEmployeeDetail(@RequestParam long id, ModelMap map) {
		map.put("emp", crudDao.findById(id));
		return "edit";
	}

	@PostMapping("editSave")
	public String saveEditUpdate(@ModelAttribute Employee employee, ModelMap map) {
		System.out.println(employee);
		crudDao.editAnEmployee(employee);
		List<Employee> empList = crudDao.getAllEmployees();
		map.put("allEmployees", empList);
		return "fetch";
	}

	@GetMapping("task")
	public String getTask() {
		return "task";
	}

	@PostMapping("executeTask")
	public String generateTask(@RequestParam int count, @RequestParam int size, @RequestParam String israndomcolor,
			ModelMap map) {
		if (israndomcolor.equals("true")) {
			List<String> colors = Arrays.asList("head", "tail");
			int num = new Random().nextInt(2);

			Random r = new Random();
			int red = r.nextInt(256);
			int green = r.nextInt(256);
			int blue = r.nextInt(256);
			 // Convert the RGB values to a hex color code
	        String hexColor = String.format("#%02x%02x%02x", red, green, blue);
			map.put("color", hexColor);
			map.put("count", count);
			map.put("size", size);
			System.out.println("rgb "+hexColor);
			return "taskresult";
		} else {
			System.out.println("Not a random color");
			return "pickcolor";
		}

	}

	@PostMapping("generatetaskwithusercolor")
	public String generateTaskUsingUserColor(@RequestParam int count, @RequestParam int size,
			@RequestParam String color, ModelMap map) {
		map.put("count", count);
		map.put("size", size);
		map.put("color", color);
		System.out.println("color: "+color);
		return "taskresult";
	}
	
}
