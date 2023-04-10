package movie.pak.controller.movie;

import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import movie.pak.dao.movie.MovieBuyDAOInter;
import movie.pak.dto.DateDTO;
import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;

@Controller
@RequestMapping(value = "/ticket")
public class MovieBuyController {

	@Autowired
	private MovieBuyDAOInter movieBuyDAOInter;

	// 영화 이름과 영화 상영관 뽑기 위한 메서드
	@RequestMapping(value = "/movieName")
	public ModelAndView movieName() {
		ModelAndView mav = new ModelAndView("movie/moviebuyform");
		// 영화 이름 리스트
		List<MovieUpDTO> namelist = movieBuyDAOInter.movieName();
		// 상영관 리스트
		List<MovieBuyDTO> palcelist = movieBuyDAOInter.moviePlace();
		mav.addObject("palcelist", palcelist);
		mav.addObject("namelist", namelist);

		// 시간, 날짜 뽑기
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy,MM,dd,HH,mm");

		String[] nowTime = sdf1.format(new Date()).split(",");
		int year = Integer.parseInt(nowTime[0]);
		int month = Integer.parseInt(nowTime[1]);
		int preday = Integer.parseInt(nowTime[2]) - 1;

		Calendar cal = Calendar.getInstance();
		cal.set(year, month, preday);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

		List<DateDTO> dayWeekList = new ArrayList<DateDTO>();
		String strMonth = "";
		int cnt = 0;
		for (int i = 0; i < 15; i++) {
			DateDTO dto = new DateDTO();
			if ((preday + i - 2) >= lastDay) {
				cnt++;
				int nextMonthDay = 0;

				if (month == 12) {
					year++;
					month = 0;

				}
				dto.setYear(Integer.toString(year));

				if ((month + 1) < 10) {
					strMonth = "0" + Integer.toString(month + 1);
				}
				dto.setMonth(strMonth);
				dto.setDay(Integer.toString(nextMonthDay + cnt));

				LocalDate date = LocalDate.of(year, month + 1, nextMonthDay + cnt);
				DayOfWeek dayOfWeek = date.getDayOfWeek();
				dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));
				dayWeekList.add(dto);

				continue;
			}
			dto.setYear(Integer.toString(year));

			if ((month) < 10) {
				strMonth = "0" + Integer.toString(month);
			}

			dto.setMonth(strMonth);
			dto.setDay(Integer.toString(preday + i));

			LocalDate date = LocalDate.of(year, month, preday + i);
			DayOfWeek dayOfWeek = date.getDayOfWeek();
			dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));

			dayWeekList.add(dto);
		}

		mav.addObject("dayWeekList", dayWeekList);

		List<String> timeList = new ArrayList<String>();
		String strI = "";
		for (int i = 0; i < 10; i++) {
			strI = Integer.toString(i);
			if (i < 10) {
				strI = "0" + strI;
			}
			timeList.add(strI);
		}
		mav.addObject("timeList", timeList);

		return mav;
	}
}
