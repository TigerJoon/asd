package movie.pak.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.SnackUpDTO;

@Repository
public class MyPageDao implements MyPageDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<MovieUpDTO> movieP(String id) {
		List<MovieUpDTO> muvo = ss.selectList("mypagep.moviep",id);
		return muvo;
	}

	@Override
	public List<SnackUpDTO> snackP(String id) {
		return ss.selectList("mypagep.snackp", id);
	}

	@Override
	public List<LoginDTO> qnaP(String id) {
		return ss.selectList("mypagep.qnap", id);
	}
	// 좋아요 영화 장르
	@Override
	public List<String> liketype(String lid) {
		System.out.println("메서드에서 보냄"+lid);
		List<String> mulike = ss.selectList("mypagep.liketype",lid);
		return mulike;
	}
	
	
}
