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
   
   
   // ���ƿ� Ŭ�� �� ����Ǵ� �޼���
   @RequestMapping(value = "/addlike", produces = "application/json;charset=utf-8")
   public int Like(MovieLikeDTO mlvo){
      
      System.out.println("���ƿ� �����轺 Ȯ����");
      int cnt=movieLikDaoInter.mylikeCnt(mlvo); //insert �� ���ƿ� �� ��ȯ ���ƿ並 ���� �ʾҴٸ�  0��ȯ
      System.out.println("cnt Ȯ��=> "+cnt);
      
      
      if (cnt==0) { // ���ƿ� ����� ���ٸ� insert���� ����ȴ�. => ���ƿ� ��� ����
         movieLikDaoInter.addLike(mlvo);
         System.out.println("insert if cnt Ȯ��=> "+cnt);
      }else { // ���ƿ� ����� �ִٸ� delete���� ����ȴ�. => ���ƿ� ��� ����
      movieLikDaoInter.delLike(mlvo);
      System.out.println("insert else cnt Ȯ��=> "+cnt);
      }
      
      
      int cnt2=movieLikDaoInter.mylikeCnt(mlvo); //insert�� �Ǵ� delete�� ���� ������ ���ƿ� ����� �̱� ���Ͽ� mylikeCnt�޼��带 �ѹ� �� ����
      System.out.println("cnt2 : "+cnt2);
      System.out.println("���ƿ� ī��Ʈ");
      System.out.println("mlvo => "+mlvo.getMno());
      return cnt2; //insert / delete�� ���� ���� ���ƿ� ���� ��ȯ �� ���� return
   }
   
   // ������ ���� �� ����Ǵ� �޼���
   @RequestMapping(value = "/likecnt2", produces = "application/json;charset=utf-8")
   public int likeCnt(MovieLikeDTO mlvo){
      // �ʱ� ��Ʈ ����� ���� => ���ƿ� ����� ���ٸ� "�� ��Ʈ" / ���ƿ� ����� �ִٸ� "��Ʈ ���"
      System.out.println("���ƿ� �����轺 Ȯ����");
      int cnt=movieLikDaoInter.mylikeCnt(mlvo);
      System.out.println("likecnt Ȯ��=> "+cnt);

      System.out.println("���ƿ� ī��Ʈ");
      System.out.println("mlvo => "+mlvo.getMno());
      return cnt; //���ƿ� ��� ����� return
   }
}