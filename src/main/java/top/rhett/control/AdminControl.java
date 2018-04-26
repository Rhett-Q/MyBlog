package top.rhett.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	
	@RequestMapping("/index")
	public String index() {
		
		return "index";
	}
	
	
	
	
}
