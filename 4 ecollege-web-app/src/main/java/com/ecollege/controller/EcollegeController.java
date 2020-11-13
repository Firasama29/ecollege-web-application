package com.ecollege.controller;
import java.io.IOException;
import java.util.Arrays;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecollege.dto.ProfileDTO;
import com.ecollege.dto.StudentsDTO;
import com.ecollege.dto.SubjectsDTO;
import com.ecollege.rest.template.WebRestTemplate;
import org.springframework.web.client.RestTemplate;


@Controller
public class EcollegeController extends RestTemplate{
	
	WebRestTemplate webRestTemplate = new WebRestTemplate();
	
	Logger log = LoggerFactory.getLogger(EcollegeController.class);

	
	@GetMapping("/")
	public String show() { 
		return "login";
	}
	
	@GetMapping("/singup")
	public String signup() {
		return "signup";
	}
	
	// show profile
	@GetMapping("/myProfile")
	public ModelAndView viewProfileById(@RequestParam("studentId")long studentId, ProfileDTO profileDto){
		
		ModelAndView mv = new ModelAndView("profile");
		
		profileDto = webRestTemplate.getForObject("http://localhost:27017"+studentId, ProfileDTO.class);
		
		return mv;
		
	}
		
	//view students
	@GetMapping("/students")
	public ModelAndView displayStudents(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView("display");
		
		String url = "http://localhost:8081/students";
		
		StudentsDTO[] studentsArray = null;
		
		try{
			studentsArray = webRestTemplate.getForObject(url, StudentsDTO[].class);
			
			Arrays.stream(studentsArray).forEach(students -> System.out.println(students));
			
			req.setAttribute("students", studentsArray);
		}
		catch (Exception e) {
			
			log.info(e.getMessage());
		}
		
		return mv;
	}
	
		
		
//	@RequestMapping("/showbyid")
//	public String updateStudents(@RequestParam("id") long id, ModelMap modelMap) {
//		Optional<Ecollege> ecollege = eService.getStudentById(id);
//		modelMap.addAttribute("ecollege", ecollege);
//		return "updateData";
//	}
//	
//	@RequestMapping(path="/{id}")
//	public @ResponseBody Optional<Ecollege> getStudentById(@PathVariable("id") long id, Ecollege ecollege){
//		if(!eService.getId(id, ecollege)) {
//			return null;
//		}
//		return eService.getStudentById(id);
//	}
	
//	//redirect to add-students.jsp
//	@GetMapping("/add")
//	public ModelAndView goToAdd(@ModelAttribute StudentsDTO students) {
//		ModelAndView mv = new ModelAndView("add-students");
//		
//		mv.addObject("students", students);
//		
//		return mv;
//	}
//	
//	//add students		
//	@PostMapping("/add")
//	public ModelAndView addStudents(@ModelAttribute StudentsDTO students) {
//		
//		ModelAndView mv = new ModelAndView("add-students");
//		
//		String url = "http://localhost:8081/add";
//		
//		mv.addObject("students", students);
//		
//		students = webRestTemplate.postForObject(url, students, StudentsDTO.class);
//		
//		log.info("students" + students);
//		
//		return mv;
//	}
	
	//view subjects
	@GetMapping("/subjects")
	public ModelAndView displaySubjects(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView("subjects");
		
		String url = "http://localhost:8082/subjects";
		
		SubjectsDTO[] subjectsArray = null;
		
		try{
			subjectsArray = webRestTemplate.getForObject(url, SubjectsDTO[].class);
			
			Arrays.stream(subjectsArray).forEach(subjects -> System.out.println(subjects));
			
			req.setAttribute("subjects", subjectsArray);
		}
		catch (Exception e) {
			
			log.info(e.getMessage());
		}
		
		return mv;
	}
	
	//redirect to add-subject.jsp
	@GetMapping("/addSubject")
	public ModelAndView goToAddSubject(@ModelAttribute SubjectsDTO subjects) {
		ModelAndView mv = new ModelAndView("add-subjects");
		
		mv.addObject("subjects", subjects);
		
		return mv;
	}
	
	//add subject
	@PostMapping("/addSubject")
	public ModelAndView addSubject(@ModelAttribute SubjectsDTO subjects, HttpServletResponse response) throws IOException {
		
		ModelAndView mv = new ModelAndView("add-subjects");
		
		String url = "http://localhost:8082/add";
		
		subjects = webRestTemplate.postForObject(url, subjects, SubjectsDTO.class);
		
		mv.addObject("subjects", subjects);
		
		log.info("subjects " + subjects);
		
		response.sendRedirect("/subjects");
		return mv;
	}
	
	
	//delete subjects
	@GetMapping("/deleteSubject")
	public String deleteSubject(@RequestParam("subjectId") long subjectId, @ModelAttribute SubjectsDTO subjects, HttpServletResponse response) throws IOException {
		
		response.sendRedirect("subjects");
		
		log.info("subjectId: "+subjectId);
		
		webRestTemplate.delete("http://localhost:8082/deleteSubject/"+subjectId);
		
		
		return "subjects";
	}
	
	//redirect to update-subject.jsp
	@GetMapping("/updateSubject")
	public ModelAndView goToUpdate(@RequestParam("subjectId") long subjectId, @ModelAttribute SubjectsDTO subjects) {
		
		ModelAndView mv = new ModelAndView("update-subject");
		
		mv.addObject("subjects", subjects);
		
		return mv;
	}
	
	//update
	@PostMapping("/updateSubject")
	public String updateSubject(@RequestParam("subjectId") long subjectId, @ModelAttribute SubjectsDTO subjects, ModelMap modelMap, HttpServletResponse response) {
		
		try {
			webRestTemplate.put("http://localhost:8082/updateSubject/", subjects, SubjectsDTO.class);
			

			response.sendRedirect("subjects");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		log.info("subjectId: " + subjectId);
		
		return "update-subject";
		
	}
	
			
//		Ecollege ecol = eService.saveStudent(ecollege);
//		String message = "student saved with id: " + ecol.getId();
//		modelMap.addAttribute("message", message);
//		modelMap.addAttribute("mode", "add_data");
//		return "addStudents";
//	}
////	public @ResponseBody String addStudents(Ecollege ecollege) {		/* here you don't use @Requestbody when you want to connect with View */
////		eService.addStudent(ecollege);
////		return "Welcome. Now you're part of our team";
////	}
//	
//	
//	
//	@PutMapping("/updateData")
//	public String update(@ModelAttribute("ecollege") Ecollege ecollege, ModelMap modelMap) {
//		eService.updateStudent(ecollege);
//		List<Ecollege> ecolleges = eService.getAllStudents();
//		modelMap.addAttribute("ecolleges", ecolleges);
//		modelMap.addAttribute("mode", "edit_data");
//		return "update";
//	}
//	
	
	//direct to delete-result.jsp
	
//	//delete project
	@GetMapping("/delete")			
	public ModelAndView deleteStudent(@RequestParam("studentId") long studentId, @ModelAttribute StudentsDTO students, ModelMap modelMap) {		// alternatively, you can use deleteProject(@RequestParam("id") long id, ModelMap modelMap)
		
		ModelAndView mv = new ModelAndView("delete-results");
		
		log.info("studentId: "+studentId);
		
		webRestTemplate.delete("http://localhost:8081/delete"+studentId, StudentsDTO.class);
		
		mv.addObject("students", students);
		
		modelMap.addAttribute("students", students);
		
		return mv;
	}
}
