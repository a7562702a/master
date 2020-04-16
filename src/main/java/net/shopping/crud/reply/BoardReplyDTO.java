package net.shopping.crud.reply;

public class BoardReplyDTO {
	
	private int rhobby_idx;
	private String rwriter;
	private String rmemo;
	private int hobby_idx;
	
	private int rrn, start, end;  //���ȣ rrn
	private String skey, sval;
	
	public int getRhobby_idx() { return rhobby_idx; }
	public void setRhobby_idx(int rhobby_idx) { this.rhobby_idx = rhobby_idx; }
	public String getRwriter() { return rwriter; }
	public void setRwriter(String rwriter) { this.rwriter = rwriter; }
	public String getRmemo() { return rmemo; }
	public void setRmemo(String rmemo) { this.rmemo = rmemo; }
	public int getHobby_idx() { return hobby_idx; }
	public void setHobby_idx(int hobby_idx) { this.hobby_idx = hobby_idx; }
	
	public int getRrn() { return rrn; }
	public void setRrn(int rrn) {	this.rrn = rrn; }
	public int getStart() {	return start; }
	public void setStart(int start) { this.start = start; }
	public int getEnd() { return end; }
	public void setEnd(int end) { this.end = end; }
	public String getSkey() { return skey; }
	public void setSkey(String skey) { this.skey = skey; }
	public String getSval() { return sval; }
	public void setSval(String sval) { this.sval = sval; }
	
}//ReplyDTO  class END
