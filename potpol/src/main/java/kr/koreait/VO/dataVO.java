package kr.koreait.VO;

public class dataVO {

	private int idx;
	private String source;
	private String before;
	private String target;
	private String after;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getBefore() {
		return before;
	}
	public void setBefore(String before) {
		this.before = before;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getAfter() {
		return after;
	}
	public void setAfter(String after) {
		this.after = after;
	}
	@Override
	public String toString() {
		return "dataVO [idx=" + idx + ", source=" + source + ", before=" + before + ", target=" + target + ", after="
				+ after + "]";
	}
	

}
