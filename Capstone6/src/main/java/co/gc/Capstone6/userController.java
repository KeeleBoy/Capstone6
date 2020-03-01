package co.gc.Capstone6;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.gc.Capstone6.entity.User;
import co.gc.Capstone6.repo.UserRepo;

@Controller

public class userController {

	@Autowired
	private UserRepo userRepo;

	@RequestMapping("/user-add")
	public ModelAndView addUser() {
		return new ModelAndView("user-add");
	}

	@PostMapping("/user-add")
	public ModelAndView AddTrainer(User user) {
		userRepo.save(user);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/user-list")
	public ModelAndView userList() {

		return new ModelAndView("user-list", "users", userRepo.findAll());
	}

	@RequestMapping("/user/{id}")
	public ModelAndView showTrainer(@PathVariable("id") User user) {
		return new ModelAndView("user-show", "user", user);

	}

}
