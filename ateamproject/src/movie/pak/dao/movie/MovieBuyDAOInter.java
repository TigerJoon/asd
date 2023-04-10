package movie.pak.dao.movie;

import java.util.List;

import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;

public interface MovieBuyDAOInter {
	
	public void addMoviebuy(MovieBuyDTO vo);

	   // 예매 시 영화 리스트 뽑아내기 --> X
	public List<MovieUpDTO> movieName();
	   
	   // 예매시 상영관 뽑아내기,상영시간 추가!!! --> X
	public List<MovieBuyDTO> moviePlace();
	   
	   
	   // 예매시 total 리스트
	public List<MovieBuyDTO> getMovieTotalList(MovieBuyDTO vo);
	   
	   // getMovie 영화 정보 뽑아내기
	public List<MovieUpDTO> movieList(int mno);
	public MovieUpDTO getMovie(int num);
	   // getTheater 정보 뽑아내기
	   public List<MovieBuyDTO> getTheater(int num);
	   
	   // 예매 시 영화 제목 등 리스트 뽑아내기 --> join문 쓰기 
}
