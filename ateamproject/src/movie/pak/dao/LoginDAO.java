package movie.pak.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.MyLoginLoggerDTO;
import movie.pak.dto.SnackUpDTO;

@Repository
public class LoginDAO implements LoginDAOInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void addMember(LoginDTO vo) {
		ss.insert("login.add", vo);
		
	}

	@Override
	public int idCheck(String id) {
		int cnt = ss.selectOne("login.idChk", id);
		return cnt;
	}

	@Override
	public LoginDTO login(LoginDTO vo) {
		
		return ss.selectOne("login.login", vo);
	}

	@Override
	public void addLoginLogging(MyLoginLoggerDTO vo) {
		ss.insert("login.logger_in", vo);
		
	}

	@Override
	public LoginDTO mypage(String id) {
		
		return ss.selectOne("login.mypage", id);
	}

	@Override
	public void update(LoginDTO vo) {
		ss.update("login.myup", vo);
		
	}

	@Override
	public MovieUpDTO movielist(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SnackUpDTO snacklist(SnackUpDTO skvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LoginDTO myqalist(LoginDTO lgvo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// È¸¿ø Å»Åð ±¸Çö
	@Override
	public void delMem(String lid) {
		ss.delete("login.delmem", lid);
		
	}


}
