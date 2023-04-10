package movie.pak.dto;

public class BuyDTO {
	/*
 LID VARCHAR2(30 BYTE)
ONO	NUMBER
POPNO	NUMBER
OCARD	VARCHAR2(30 BYTE)
TOTALPAY	NUMBER
MBNO	NUMBER
BUYDATE	VARCHAR2(30 BYTE)
BUYCOUNT	NUMBER*/

	private String lid,ocard,buydate;
	private int ono,popno,totalpay,mbno,buycount;
	
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getOcard() {
		return ocard;
	}
	public void setOcard(String ocard) {
		this.ocard = ocard;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getPopno() {
		return popno;
	}
	public void setPopno(int popno) {
		this.popno = popno;
	}
	public int getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(int totalpay) {
		this.totalpay = totalpay;
	}
	public int getMbno() {
		return mbno;
	}
	public void setMbno(int mbno) {
		this.mbno = mbno;
	}
	public int getBuycount() {
		return buycount;
	}
	public void setBuycount(int buycount) {
		this.buycount = buycount;
	}
	
	
	
	
}
