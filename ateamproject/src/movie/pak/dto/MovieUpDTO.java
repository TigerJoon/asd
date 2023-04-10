package movie.pak.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MovieUpDTO {
	/*
MNO	NUMBER
MIMG	VARCHAR2(30 BYTE)
MNAME	VARCHAR2(50 BYTE)
MSARAM	NUMBER
MTYPE	VARCHAR2(60 BYTE)
MTIME	VARCHAR2(30 BYTE)
MAGE	NUMBER
MSTARTDAY	VARCHAR2(30 BYTE)
MDIREC	VARCHAR2(30 BYTE)
MSTORY	VARCHAR2(3000 BYTE)
MACTOR	VARCHAR2(200 BYTE)
MGRNO	NUMBER
	 * */
	
	private String mimg,mname,mtype,mtime,mstartday,mdirec,mstory,mactor;
	private int mno,msaram,mage,mgrno;
	
	private List<MovieBuyDTO> moviebuy; // 1:n 관계에서 moviebuy가 n이기 때문에 리스트로 vo에 추가해준다.
	
	private MultipartFile mfile;
	
	
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	public List<MovieBuyDTO> getMoviebuy() {
		return moviebuy;
	}
	public void setMoviebuy(List<MovieBuyDTO> moviebuy) {
		this.moviebuy = moviebuy;
	}
	public String getMimg() {
		return mimg;
	}
	public void setMimg(String mimg) {
		this.mimg = mimg;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public String getMstartday() {
		return mstartday;
	}
	public void setMstartday(String mstartday) {
		this.mstartday = mstartday;
	}
	public String getMdirec() {
		return mdirec;
	}
	public void setMdirec(String mdirec) {
		this.mdirec = mdirec;
	}
	public String getMstory() {
		return mstory;
	}
	public void setMstory(String mstory) {
		this.mstory = mstory;
	}
	public String getMactor() {
		return mactor;
	}
	public void setMactor(String mactor) {
		this.mactor = mactor;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getMsaram() {
		return msaram;
	}
	public void setMsaram(int msaram) {
		this.msaram = msaram;
	}
	public int getMage() {
		return mage;
	}
	public void setMage(int mage) {
		this.mage = mage;
	}
	public int getMgrno() {
		return mgrno;
	}
	public void setMgrno(int mgrno) {
		this.mgrno = mgrno;
	}
	

}
