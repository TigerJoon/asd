package movie.pak.controller.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RestController;

import movie.pak.dao.movie.MovieBuyDAOInter;
import movie.pak.dto.MovieBuyDTO;

@RestController
@RequestMapping(value = "/rest")
public class MovieBuyRestController {

	@Autowired
	private MovieBuyDAOInter movieBuyDAOInter;
	
	
	@RequestMapping(value = "/theater", produces = "application/json;charset=utf-8")
	public List<MovieBuyDTO> gettheaterNo(){
		List<MovieBuyDTO> theaterlist = movieBuyDAOInter.moviePlace();
		System.out.println(theaterlist);
		return theaterlist;
		
		
	}
}
