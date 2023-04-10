package movie.pak.controller.member;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import movie.pak.dao.LoginDAOInter;
import movie.pak.dao.MyPageDaoInter;
import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.SnackUpDTO;

@Controller
@RequestMapping(value = "/member")
public class ControllerMember {
// 사용하려는 MemberDao가 MemberInter를 구현하여 (implement)memberinter를 autowirde해준다.
	
	@Autowired
	private LoginDAOInter loginDaoInter;
	
	@Autowired
	private MyPageDaoInter myPageDaoInter;
	
	// 회원가입 폼으로 이동
	@GetMapping(value = "/joinForm")
	public String joinForm() {
		return "loginJoin/joinForm";
		
	}
	
	//로그인 폼으로 이동
	@GetMapping(value = "/loginForm")
	public String loginForm() {
		return "loginJoin/loginForm";
		
	}
	// 회원가입
	@PostMapping(value = "/join")
	public String memberIn(LoginDTO vo) {
	 System.out.println("Lid=>"+vo.getLid());
	 System.out.println("Lpwd=>"+vo.getLpwd());
	 System.out.println("Ljumin=>"+vo.getLjumin());
	 System.out.println("Lphone=>"+vo.getLphone());
	 System.out.println("Mgrno=>"+vo.getMgrno());
	 System.out.println("Lname=>"+vo.getLname());
	 System.out.println("Lgender=>"+vo.getLgender());
	 System.out.println("Laddr=>"+vo.getLaddr());
	 System.out.println("Lemail=>"+vo.getLemail());
	 System.out.println("Limg=>"+vo.getLimg());
	 System.out.println(vo.getLmileage());
	 System.out.println(vo.getLclass());
	System.out.println("끝");
	loginDaoInter.addMember(vo);
	 
	/*#{lid},#{lpwd},#{ljumin},#{lphone},#{mgrno},#{lname},
#{lgender},#{laddr},#{lemail},#{limg},#{lmileage},#{lclass})*/
	return "loginJoin/loginForm";
	}
	
	//아이디체크
	@RequestMapping(value = "/idchk")
	public ModelAndView idChk(String lid) {
		ModelAndView mav = new ModelAndView("loginJoin/idchk");
		int cnt = loginDaoInter.idCheck(lid);
		mav.addObject("cnt", cnt);
		System.out.println(cnt);
		return mav;
	}
	
	@PostMapping(value = "/login")
	public ModelAndView logfin(HttpSession session, HttpServletRequest requset, LoginDTO vo, 
			@RequestHeader("User-Agent") String userAgent) {
		ModelAndView mav = new ModelAndView("redirect:/main");
		LoginDTO dto = loginDaoInter.login(vo);
		if (dto == null) {
			mav.setViewName("error/paramException");
			mav.addObject("emsg", "로그인 실패입니다.");
		} else {
           session.setAttribute("sessionName", dto.getLname());
           session.setAttribute("sessionID", dto.getLid());
		}
		return mav;
	}
	
	@GetMapping(value = "/logout")
	   public ModelAndView logfout(HttpSession session, HttpServletRequest request) {
	      System.out.println("로그아웃 되나요?");
	      ModelAndView mav = new ModelAndView();
	      session.removeAttribute("sessionName");
	      session.removeAttribute("sessionID");
	      mav.setViewName("redirect:/main");
	      return mav;
	   }
	
	// mypage
	@GetMapping(value = "/mypage")
	public String mypage(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("sessionID");
		if(id != null) {
			LoginDTO v = loginDaoInter.mypage(id);
			List<MovieUpDTO> muvo = myPageDaoInter.movieP(id);
			List<SnackUpDTO> snvo = myPageDaoInter.snackP(id);
			List<LoginDTO> lovo = myPageDaoInter.qnaP(id);
		    
			request.setAttribute("v", v);
			// modelandview 또는 model을 안쓴 이유는 request.setAttribute로 뷰단으로 값을 전달 할 수 있기 때문
			request.setAttribute("muvo", muvo);
			request.setAttribute("snvo", snvo);
			request.setAttribute("lovo", lovo);
			
			return "loginJoin/myPage";
		}else {
			return "index";
		}
	}
	

	@RequestMapping(value = "/photoup")
	   public String upload(Model m, LoginDTO vo, HttpServletRequest request) {
	      
	      String img_path= "resources\\imgpwd"; //이미지 경로
	      String r_path = request.getRealPath("/");
	      
	      String oriFn = vo.getMfile().getOriginalFilename(); // 파일 이름
	      
	      
	      long size = vo.getMfile().getSize(); //용량
	      String contentType = vo.getMfile().getContentType(); // 타입
	      

	      
	      StringBuffer path = new StringBuffer(); // 임시 저장소
	      path.append(r_path).append(img_path).append("\\");
	      path.append(oriFn);
	      
	   System.out.println("test");
	      
	      File f = new File(path.toString()); // 파일 객체 생성
	      try {
	         vo.getMfile().transferTo(f);
	         vo.setLimg(oriFn);
	         System.out.println("oriFn????? => "+oriFn);
	      } catch (IllegalStateException | IOException e) {
	         e.printStackTrace();
	      }
	      loginDaoInter.update(vo);
	   
	      return "redirect:/member/mypage";
	}
	
	@GetMapping(value = "/upform")
	public ModelAndView upForm(LoginDTO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("loginJoin/joinUpdateForm");
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("sessionID");
		vo = loginDaoInter.mypage(id);
		mav.addObject("v", vo);
		return mav;
	}
	
	// mypage 수정
	@PostMapping(value = "/update")
	public String update(LoginDTO vo) {
		loginDaoInter.update(vo);
		return "redirect:/member/mypage";
	}
	// 회원 탈퇴를 위한 컨트롤러
	@RequestMapping(value = "/delmem")
	public String delmember(String lid, HttpSession session) {
		loginDaoInter.delMem(lid);
		System.out.println("제발 돼라");
		// 저장된 세션 삭제
		session.removeAttribute("sessionID");
		return "redirect:/main";
	}
	
	//@GetMapping(value = "/likemtype")
//	public String test(String lid) {
//	    List<String> mtype = myPageDaoInter.liketype(lid);
//	    Map<String, Integer> genreCount = new HashMap<>();
//	    for (String type : mtype) {
//	        List<String> mtypeList = Arrays.asList(type.split("/"));
//	        for (String e : mtypeList) {
//	            Integer count = genreCount.getOrDefault(e, 0);
//	            genreCount.put(e, count + 1);
//	        }
//	    }
//	    System.out.println(genreCount);
//	    return ;
//	}
	
}
