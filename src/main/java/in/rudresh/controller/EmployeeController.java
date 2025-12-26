package in.rudresh.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.rudresh.entity.Employee;
import in.rudresh.service.EmployeeService;
import jakarta.validation.Valid;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService service;

	@GetMapping("/register")
	public String form(Model model) {
		model.addAttribute("employee", new Employee());
		return "register";
	}

	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("employee") Employee employee, BindingResult result, Model model) {
		if (result.hasErrors()) {
			Map<String, String> errors = new HashMap<>();
			result.getFieldErrors().forEach(e -> errors.put(e.getField(), e.getDefaultMessage()));
			model.addAttribute("errors", errors);
			return "register";
		}
		service.save(employee);
		return "redirect:employees";
	}
	
	@GetMapping("/employees")
	public String list(Model model) {
		model.addAttribute("employee",service.getAll());
		return "list";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable Integer id, Model model) {
		model.addAttribute("employee", service.getById(id));
		return "register";
	}

	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		service.delete(id);
		return "redirect:/employees";
	}
}
