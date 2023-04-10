package movie.pak.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerMain {
	
	// (value = {"/","/main"}) => project run시 바로 해당 메서드를 실행한다. 
	@RequestMapping(value = {"/","/main"})
	public String main() {
		return "index/index";	
	}
	@GetMapping(value = "/vip")
	public String membership() {
	    return "membership/membership";
	}
}
