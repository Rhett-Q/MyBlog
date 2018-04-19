package top.rhett.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginControl {
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
}
