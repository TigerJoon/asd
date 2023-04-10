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
	   
	@Autowired // ���ܿͶ�
	public ChartDaoInter chartDaoInter;
	
	
	@Autowired
	private MyPageDaoInter myPageDaoInter;

	   // produces = "text/html;charset=euc-kr") => content-Type�� �����ϴ� �Ӽ�
	@RequestMapping(value = "/genDonut", produces = "application/json;charset=utf-8")
	public String genChart(int mno) {

	   String mvTitle = chartDaoInter.movTitle(mno);
	   System.out.println("��ȭ����=> " + mvTitle); // ��ȭ����

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
	   //System.out.println("����b" + b2);
	   //System.out.println("��b" + b);

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
	      
	      String mvTitle = chartDaoInter.movTitle(mno); //��ȭ ���� ��������
	      System.out.println("----------");
	      List<Map<String, Integer>> list = chartDaoInter.ageBarlist(mno); //�ʿ� ��Ƽ� ����Ʈ�� ��������
	      Map<Object, Object> map = new LinkedHashMap<Object, Object>(); //HashMap�� ���� ������� ����ȵ�. �Ǵ°� ��
	            //HashedMap(); // Map<String, Integer> �ȵ�.......����???
	     // System.out.println("list=>"+list);
	     // System.out.println("list[1]=>"+list.get(1));
	     // System.out.println("list[ages]=>"+list.get(1).get("AGES"));
	     // System.out.println("list[cnt]=>"+list.get(1).get("CNT"));
	      
	      for (int i = 0; i < list.size(); i++) { //����Ʈ ������ ���ؼ�
	         map.put(list.get(i).get("AGES"), list.get(i).get("CNT")); // k��,v�� �����ؼ�map�ֱ� 
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
	        List<String> mtypeList = Arrays.asList(type.split("/")); // Arrays.asList() ����Ͽ� /�� ���е� ���ڿ��� ������ ����Ʈ�� ��ȯ
	        for (String genre : mtypeList) { 
	            Integer count = map.getOrDefault(genre, 0);
	            Integer allcount = count + 1; 
	            map.put(genre, allcount);   //����Ʈ�� ���� map�� �帣�� �׿� �ش��ϴ� ī��Ʈ ���� ����
	        }
	    }
	    
	    Map<String, Integer> sortedMap = map.entrySet().stream()
	            .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())) //��������
	            .limit(5) //������ 5�������� ������
	            .collect(Collectors.toMap( // Collectors Ŭ������ toMap �޼ҵ带 �̿��Ͽ� key�� �״�� �����ϰ�, value�� �״�� �����ϸ�, ������ key�� �ִ� ��� ���� ���Ͽ� �����ϰ�, ���� ����� LinkedHashMap���� ��ȯ
	                    Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new)); // LinkedHashMap�� �Էµ� ������ ���� -> �Ʒ��� �ּ� �ڵ�� ����
	    				/*
	    				 * Map<String, Integer> map = new LinkedHashMap<>();
							for (Map.Entry<String, Integer> entry : entries) {
    						map.put(entry.getKey(), entry.getValue());
							}
	    				 * */
	    
	    String ref = null;
	    ObjectMapper mapper = new ObjectMapper(); // ObjectMapper�� ����Ͽ� Map��ü�� JSON ���·� ��ȯ
	    try {
	         ref = mapper.writeValueAsString(sortedMap); //��ȯ�� ��, ref ���ڿ��� ����
	         ref = "[{},"+ ref +"]"; //"[{},{"�׼�":27,"���":13,"������":11,"�θǽ�":10,"�ڹ̵�":8}]" -> �̷������� ����
	         System.out.println(ref);
	      } catch (JsonProcessingException e) {
	         e.printStackTrace();
	      }
	    System.out.println(sortedMap);
	    return ref;
	}
}
