package movie.pak.dto;

public class MovieCommDTO {

	private int commno, mno, mgood;
	private float mgoodAvg;
	private String lid,comm,commdate;
	public int getCommno() {
		return commno;
	}
	public void setCommno(int commno) {
		this.commno = commno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getMgood() {
		return mgood;
	}
	public void setMgood(int mgood) {
		this.mgood = mgood;
	}
	public float getMgoodAvg() {
		return mgoodAvg;
	}
	public void setMgoodAvg(float mgoodAvg) {
		this.mgoodAvg = mgoodAvg;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public String getCommdate() {
		return commdate;
	}
	public void setCommdate(String commdate) {
		this.commdate = commdate;
	}
	
	
}
