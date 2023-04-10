package movie.pak.controller.movie;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import movie.pak.dao.movie.MovieLikeDAOInter;
import movie.pak.dto.MovieLikeDTO;

@RestController
@RequestMapping(value = "/like")
public class MovieLikeRestController {

   @Autowired
   private MovieLikeDAOInter movieLikDaoInter;
   
   
   // 좋아요 클릭 시 실행되는 메서드
   @RequestMapping(value = "/addlike", produces = "application/json;charset=utf-8")
   public int Like(MovieLikeDTO mlvo){
      
      System.out.println("좋아요 에이잭스 확인중");
      int cnt=movieLikDaoInter.mylikeCnt(mlvo); //insert 전 좋아요 수 반환 좋아요를 하지 않았다면  0반환
      System.out.println("cnt 확인=> "+cnt);
      
      
      if (cnt==0) { // 좋아요 기록이 없다면 insert문이 실행된다. => 좋아요 기록 저장
         movieLikDaoInter.addLike(mlvo);
         System.out.println("insert if cnt 확인=> "+cnt);
      }else { // 좋아요 기록이 있다면 delete문이 실행된다. => 좋아요 기록 삭제
      movieLikDaoInter.delLike(mlvo);
      System.out.println("insert else cnt 확인=> "+cnt);
      }
      
      
      int cnt2=movieLikDaoInter.mylikeCnt(mlvo); //insert문 또는 delete문 실행 이후의 좋아요 기록을 뽑기 위하여 mylikeCnt메서드를 한번 더 실행
      System.out.println("cnt2 : "+cnt2);
      System.out.println("좋아요 카운트");
      System.out.println("mlvo => "+mlvo.getMno());
      return cnt2; //insert / delete문 실행 이후 좋아요 수를 반환 한 변수 return
   }
   
   // 페이지 실행 시 실행되는 메서드
   @RequestMapping(value = "/likecnt2", produces = "application/json;charset=utf-8")
   public int likeCnt(MovieLikeDTO mlvo){
      // 초기 하트 모양을 결정 => 좋아요 기록이 없다면 "빈 하트" / 좋아요 기록이 있다면 "하트 모양"
      System.out.println("좋아요 에이잭스 확인중");
      int cnt=movieLikDaoInter.mylikeCnt(mlvo);
      System.out.println("likecnt 확인=> "+cnt);

      System.out.println("좋아요 카운트");
      System.out.println("mlvo => "+mlvo.getMno());
      return cnt; //좋아요 기록 결과를 return
   }
}