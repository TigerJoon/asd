package movie.pak.dto;

public class MovieBuyDTO {
	/*
	 * 
MBNO NUMBER
LID	VARCHAR2(30 BYTE)
MBSARAM	NUMBER
MBDATE	DATE
MBPAY	NUMBER
MBPLACE	VARCHAR2(30 BYTE)
MBHANG	VARCHAR2(10 BYTE)
MBYEOL	VARCHAR2(10 BYTE)
MNO	NUMBER
MENDTIME	VARCHAR2(30 BYTE)
MSTARTTIME	VARCHAR2(30 BYTE)
	 * */
private String lid,mbdate,mbplace,mbhang,mbyeol,mendtime,mstarttime;
private int mbno,mbsaram,mbpay,mno;

public String getLid() {
	return lid;
}
public void setLid(String lid) {
	this.lid = lid;
}
public String getMbdate() {
	return mbdate;
}
public void setMbdate(String mbdate) {
	this.mbdate = mbdate;
}
public String getMbplace() {
	return mbplace;
}
public void setMbplace(String mbplace) {
	this.mbplace = mbplace;
}
public String getMbhang() {
	return mbhang;
}
public void setMbhang(String mbhang) {
	this.mbhang = mbhang;
}
public String getMbyeol() {
	return mbyeol;
}
public void setMbyeol(String mbyeol) {
	this.mbyeol = mbyeol;
}
public String getMendtime() {
	return mendtime;
}
public void setMendtime(String mendtime) {
	this.mendtime = mendtime;
}
public String getMstarttime() {
	return mstarttime;
}
public void setMstarttime(String mstarttime) {
	this.mstarttime = mstarttime;
}
public int getMbno() {
	return mbno;
}
public void setMbno(int mbno) {
	this.mbno = mbno;
}
public int getMbsaram() {
	return mbsaram;
}
public void setMbsaram(int mbsaram) {
	this.mbsaram = mbsaram;
}
public int getMbpay() {
	return mbpay;
}
public void setMbpay(int mbpay) {
	this.mbpay = mbpay;
}
public int getMno() {
	return mno;
}
public void setMno(int mno) {
	this.mno = mno;
}
}
