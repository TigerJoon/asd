package movie.pak.controller.chart;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import movie.pak.dao.MyPageDaoInter;
import movie.pak.dao.movie.ChartDaoInter;
import movie.pak.dto.LoginDTO;

@RestController
public class ChartRestController {
	   
	@Autowired // 땡겨와라
	public ChartDaoInter chartDaoInter;
	
	
	@Autowired
	private MyPageDaoInter myPageDaoInter;

	   // produces = "text/html;charset=euc-kr") => content-Type을 지정하는 속성
	@RequestMapping(value = "/genDonut", produces = "application/json;charset=utf-8")
	public String genChart(int mno) {

	   String mvTitle = chartDaoInter.movTitle(mno);
	   System.out.println("영화제목=> " + mvTitle); // 영화제목

	   List<LoginDTO> list = chartDaoInter.genDonut(mno);
	  // LoginDTO a = list.get(0);
	  // System.out.println(a);
	  // int b = a.getCnt();
	  // String b2 = a.getLgender();
	   Map<String, Integer> map = new HashedMap();

	   for (int i = 0; i < list.size(); i++) {
		   System.out.println("2");
	      map.put(list.get(i).getLgender(), list.get(i).getCnt());
	   }
	   //System.out.println("성별b" + b2);
	   //System.out.println("수b" + b);

	   String res = null;
	   ObjectMapper mapper = new ObjectMapper(); // json <=> java
	   try {
	      res = mapper.writeValueAsString(map); 
	      res = "[{\"movieTitle\":\"" + mvTitle + "\"}," + res + "]";
	      System.out.println(res);
	   } catch (JsonProcessingException e) {
		  // TODO Auto-generated catch block
	      e.printStackTrace();
	   }
	      return res;
	   }
	
	
	@RequestMapping(value = "/ageBar", produces = "application/json;charset=utf-8")
	   public String ageChart(int mno) {
	      
	      String mvTitle = chartDaoInter.movTitle(mno); //영화 제목 가져오기
	      System.out.println("----------");
	      List<Map<String, Integer>> list = chartDaoInter.ageBarlist(mno); //맵에 담아서 리스트로 가져오자
	      Map<Object, Object> map = new LinkedHashMap<Object, Object>(); //HashMap은 저장 순서대로 저장안됨. 되는건 얘
	            //HashedMap(); // Map<String, Integer> 안됨.......왜지???
	     // System.out.println("list=>"+list);
	     // System.out.println("list[1]=>"+list.get(1));
	     // System.out.println("list[ages]=>"+list.get(1).get("AGES"));
	     // System.out.println("list[cnt]=>"+list.get(1).get("CNT"));
	      
	      for (int i = 0; i < list.size(); i++) { //리스트 사이즈 구해서
	         map.put(list.get(i).get("AGES"), list.get(i).get("CNT")); // k값,v값 설정해서map넣기 
	      }
	      // -----------
	      String res = null;
	      ObjectMapper mapper = new ObjectMapper();
	      try {
	         res = mapper.writeValueAsString(map);
	         res = "[{\"movieTitle\":\"" + mvTitle + "\"}," + res + "]";
	         System.out.println(res);
	      } catch (JsonProcessingException e) {
	         e.printStackTrace();
	      }
	      return res;
	      // -----------
	   }

	@RequestMapping(value = "/likemtype", produces = "application/json;charset=utf-8")
	public String test(String lid) {
	    List<String> mtype = myPageDaoInter.liketype(lid);
	    Map<String, Integer> map = new HashMap<>();
	    
	    for (String type : mtype) {
	        List<String> mtypeList = Arrays.asList(type.split("/")); // Arrays.asList() 사용하여 /로 구분된 문자열을 나누어 리스트로 변환
	        for (String genre : mtypeList) { 
	            Integer count = map.getOrDefault(genre, 0);
	            Integer allcount = count + 1; 
	            map.put(genre, allcount);   //리스트를 돌며 map에 장르와 그에 해당하는 카운트 값을 저장
	        }
	    }
	    
	    Map<String, Integer> sortedMap = map.entrySet().stream()
	            .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())) //역순정렬
	            .limit(5) //갯수를 5개까지로 정해줌
	            .collect(Collectors.toMap( // Collectors 클래스의 toMap 메소드를 이용하여 key를 그대로 유지하고, value를 그대로 유지하며, 동일한 key가 있는 경우 값을 더하여 병합하고, 최종 결과를 LinkedHashMap으로 반환
	                    Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new)); // LinkedHashMap은 입력된 순서를 유지 -> 아래의 주석 코드와 같음
	    				/*
	    				 * Map<String, Integer> map = new LinkedHashMap<>();
							for (Map.Entry<String, Integer> entry : entries) {
    						map.put(entry.getKey(), entry.getValue());
							}
	    				 * */
	    
	    String ref = null;
	    ObjectMapper mapper = new ObjectMapper(); // ObjectMapper를 사용하여 Map객체를 JSON 형태로 변환
	    try {
	         ref = mapper.writeValueAsString(sortedMap); //변환한 후, ref 문자열에 저장
	         ref = "[{},"+ ref +"]"; //"[{},{"액션":27,"드라마":13,"스릴러":11,"로맨스":10,"코미디":8}]" -> 이런식으로 만듬
	         System.out.println(ref);
	      } catch (JsonProcessingException e) {
	         e.printStackTrace();
	      }
	    System.out.println(sortedMap);
	    return ref;
	}
}
