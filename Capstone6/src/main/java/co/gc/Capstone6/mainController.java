package co.gc.Capstone6;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class mainController {

	@RequestMapping("/")
	public ModelAndView index() {

		return new ModelAndView("home");
	}

}
