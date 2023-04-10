package movie.pak.dto;

public class QnACommDTO {
/*
 * -------- -------- ------------- 
NO       NOT NULL NUMBER        
MCODE             NUMBER        
MWRITER           VARCHAR2(30)  
MCONTENT          VARCHAR2(400) 
MREGDATE          DATE 
 * 
 * */
	private int no, mcode;
	private String mwriter, mcontent, mregdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public String getMwriter() {
		return mwriter;
	}
	public void setMwriter(String mwriter) {
		this.mwriter = mwriter;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public String getMregdate() {
		return mregdate;
	}
	public void setMregdate(String mregdate) {
		this.mregdate = mregdate;
	}
}
