package movie.pak.controller.mapmail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/theater")
public class MapController {

	@GetMapping(value = "/mapk")
	public String theaterMap() {
		System.out.println("----------------");
		return "theater/map";
	}

	/*@GetMapping(value = "/review")
	public String reviewChart() {
		return "theater/reviewchart";
	}*/
}
