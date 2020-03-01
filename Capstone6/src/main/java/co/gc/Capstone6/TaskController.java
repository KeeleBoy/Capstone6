package co.gc.Capstone6;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.gc.Capstone6.entity.Task;
import co.gc.Capstone6.repo.TaskRepo;
import co.gc.Capstone6.repo.UserRepo;

@Controller

public class TaskController {
	
	@Autowired
	private UserRepo userRepo;

	@Autowired
	private HttpSession sesh;	
	
	@Autowired
	private TaskRepo taskRepo;
	
	@RequestMapping("/addtask")
	public ModelAndView login() {
		return new ModelAndView("addtask");

	}
	
	@RequestMapping("/edittask")
	public ModelAndView edit(@RequestParam("id") Long id) {
		return new ModelAndView("addtask", "task", taskRepo.findById(id).orElse(null));

	}
	
	@PostMapping("/accept")
	public ModelAndView accept(Task task) {
		taskRepo.save(task);
		return new ModelAndView("redirect:/loggedin");
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		taskRepo.deleteById(id);
		return new ModelAndView("redirect:/loggedin");

	}
	
	
	

}
