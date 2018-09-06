package util;

public class SearchInfo {
	private int page = 1;
	public void setPage(int page) {
	    this.page = page;
	}
	public int getPage() {
	    return page;
	}
	private int limit = 2;
	
	public String getLimit() {
		if(limit !=2) {
	    return " limit " + (page - 1) * limit + "," + limit;
		}
		return null;
	}
	public void setLimit(int limit) {
	    this.limit = limit;
	}


	String where="";
	String txt="";

	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		
		if(txt==null||txt=="") {
			where=" where status=0 ";
		}else {
			this.txt = txt;
			where=" where fullname like '%"+txt+"%' and status=0 ";
		}
	}
	
	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

	public Integer getNext() {
		return page+1;
	}
	
	public Integer getPrev() {
		return page>1?page-1:1;
	}

}
