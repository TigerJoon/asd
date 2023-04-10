package movie.pak.dao.movie;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;
@Repository
public class MovieBuyDAO implements MovieBuyDAOInter{
	@Autowired
	private SqlSessionTemplate ss;
	   
	@Override
	public void addMoviebuy(MovieBuyDTO vo) {
	    ss.insert("moviebuy.add", vo);
	}
	    // 영화 이름 뽑기
	@Override
	public List<MovieUpDTO> movieName() {
	   List<MovieUpDTO> list = ss.selectList("moviebuy.moviename");
	   return list;
	}
	@Override
	public List<MovieBuyDTO> moviePlace() {
	   List<MovieBuyDTO> list = ss.selectList("moviebuy.movieplace");
	   return list;
	}
	@Override
	public List<MovieBuyDTO> getMovieTotalList(MovieBuyDTO vo) {
	   List<MovieBuyDTO> list = ss.selectList("moviebuy.tickettotal", vo);
	   return list;
	}
	@Override
	public MovieUpDTO getMovie(int num) {
	   MovieUpDTO vo = ss.selectOne("moviebuy.getMovie", num);
	   return vo;
	}
	@Override
	public List<MovieBuyDTO> getTheater(int num) {
	   List<MovieBuyDTO> vo = ss.selectList("moviebuy.gettheater", num);
	   return vo;
	}
	// 예매 시 영화 이름, 이미지, 연령 리스트 뽑기
	@Override
	public List<MovieUpDTO> movieList(int mno) {
	   System.out.println("mmnn"+mno);
	   List<MovieUpDTO> vo = ss.selectList("moviebuy.movieList", mno);
	   System.out.println("list mno"+vo.get(1));
	   return vo;
	}
}
