package movie.pak.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class SnackUpDTO {
	private int popno;
	private int poppay;
	private String popimg;
	private int mgrno;
	private String popname;
	private String usedate;
	private String country;
	private String snackdetail;
	private String lid;
	
	private List<BuyDTO> buy;

	// spring web 제공해주는 multipart.MultipartFile
	private MultipartFile mfile;
	
	
	
	public List<BuyDTO> getBuy() {
		return buy;
	}
	public void setBuy(List<BuyDTO> buy) {
		this.buy = buy;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public int getPopno() {
		return popno;
	}


	public void setPopno(int popno) {
		this.popno = popno;
	}

	
	public int getPoppay() {
		return poppay;
	}


	public void setPoppay(int poppay) {
		this.poppay = poppay;
	}


	public String getPopimg() {
		return popimg;
	}


	public void setPopimg(String popimg) {
		this.popimg = popimg;
	}


	public int getMgrno() {
		return mgrno;
	}


	public void setMgrno(int mgrno) {
		this.mgrno = mgrno;
	}


	public String getPopname() {
		return popname;
	}


	public void setPopname(String popname) {
		this.popname = popname;
	}


	public String getUsedate() {
		return usedate;
	}


	public void setUsedate(String usedate) {
		this.usedate = usedate;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getSnackdetail() {
		return snackdetail;
	}


	public void setSnackdetail(String snackdetail) {
		this.snackdetail = snackdetail;
	}


	public MultipartFile getMfile() {
		return mfile;
	}


	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	
	
}
