package co.gc.Capstone6;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.gc.Capstone6.entity.User;
import co.gc.Capstone6.repo.TaskRepo;
import co.gc.Capstone6.repo.UserRepo;

@Controller

public class LoginController {

	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private TaskRepo taskRepo;

	@Autowired
	private HttpSession sesh;

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login-form");

	}

	@PostMapping("/login")
	public ModelAndView loginSubmit(@RequestParam("username") String username,
			@RequestParam("password") String password, RedirectAttributes redir) {

		User user = userRepo.findByUsernameIgnoreCase(username);

		if (user == null || !password.equals(user.getPassword())) {
			ModelAndView mav = new ModelAndView("redirect:/loggedin");
			mav.addObject("message", "Wrong user name or password loser");
			return mav;
		}

		sesh.setAttribute("user", user);

		redir.addFlashAttribute("message", "Logged you in fam: " + user.getUsername());

		return new ModelAndView("redirect:/loggedin", "id", user.getId());

	}

	@RequestMapping("/loggedin")
	public ModelAndView loggedin() {
		return new ModelAndView("loggedin", "tasks", taskRepo.findAll());
	}

	@RequestMapping("/logout")
	public ModelAndView logout(RedirectAttributes redir) {

		sesh.invalidate();

		redir.addFlashAttribute("message", "logged you out :/");
		return new ModelAndView("redirect:/login");

	}

}
