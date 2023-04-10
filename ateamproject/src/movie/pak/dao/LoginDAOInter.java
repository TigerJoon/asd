package movie.pak.dao;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.MyLoginLoggerDTO;
import movie.pak.dto.SnackUpDTO;

public interface LoginDAOInter {
public void addMember(LoginDTO vo);
public int idCheck(String id);

public LoginDTO login(LoginDTO vo);
public void addLoginLogging(MyLoginLoggerDTO vo);
public LoginDTO mypage(String id);
public void update(LoginDTO vo);
public MovieUpDTO movielist(String id);
public SnackUpDTO snacklist(SnackUpDTO skvo);
public LoginDTO myqalist(LoginDTO lgvo);
// È¸¿ø Å»Åð
public void delMem(String lid);
}
