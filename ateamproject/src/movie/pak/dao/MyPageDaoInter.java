package movie.pak.dao;

import java.util.List;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.SnackUpDTO;

public interface MyPageDaoInter {

	public List<MovieUpDTO> movieP(String id); // ��ȭ ���� ���� ���
	public List<SnackUpDTO> snackP(String id); // ���� ���� ���� ���
	public List<LoginDTO> qnaP(String id); // QA ���� ���
	
	// ���ƿ� ������ ��ȭ�� �帣
	public List<String> liketype(String lid);
}
