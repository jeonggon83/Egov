package egovframework.example.domain;

public class StaffInfoVo {
	private String no = "";    /*순번*/ 
	private String name = "";  /*이름*/
	private String num ="";	   /*사원번호*/
	private String add ="";    /*주소*/
	private String phone ="";  /*전화번호*/
	private String rank ="";   /*직급*/
	private String dept ="";   /*부서*/
	private String email ="";  /*이메일*/	
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
