package movie.pak.dao;

import java.util.List;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.SnackUpDTO;

public interface MyPageDaoInter {

	public List<MovieUpDTO> movieP(String id); // 영화 예매 내역 출력
	public List<SnackUpDTO> snackP(String id); // 스낵 구매 내역 출력
	public List<LoginDTO> qnaP(String id); // QA 내역 출력
	
	// 좋아요 선택한 영화의 장르
	public List<String> liketype(String lid);
}
