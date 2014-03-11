package com.pojo.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.comom.Pagination;
import com.pojo.model.LostInfo;
import com.pojo.service.LostInfoService;

@SuppressWarnings("serial")
public class OLostInfo extends ActionSupport {
	private int page;
    private Pagination pagination;
    private LostInfo Linfo;
    List<Integer> list = new ArrayList<Integer>();
    private Integer id;
	private String uid;
	private String username;
	private String lost_name;	
	private String lost_type;	
	private String lost_place;	
	private String lost_time;	
	private String contact_name;	
	private String contact_mobile;
	private String contact_email;
	private String contact_qq;	
	private String lost_detail_info;
	private LostInfoService lostinfoService;
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public Pagination getPagination() {
		return pagination;
	}
	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}
	public LostInfo getLinfo() {
		return Linfo;
	}
	public void setLinfo(LostInfo linfo) {
		Linfo = linfo;
	}
	public List<Integer> getList() {
		return list;
	}
	public void setList(List<Integer> list) {
		this.list = list;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLost_name() {
		return lost_name;
	}
	public void setLost_name(String lostName) {
		lost_name = lostName;
	}
	public String getLost_type() {
		return lost_type;
	}
	public void setLost_type(String lostType) {
		lost_type = lostType;
	}
	public String getLost_place() {
		return lost_place;
	}
	public void setLost_place(String lostPlace) {
		lost_place = lostPlace;
	}
	public String getLost_time() {
		return lost_time;
	}
	public void setLost_time(String lostTime) {
		lost_time = lostTime;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contactName) {
		contact_name = contactName;
	}
	public String getContact_mobile() {
		return contact_mobile;
	}
	public void setContact_mobile(String contactMobile) {
		contact_mobile = contactMobile;
	}
	public String getContact_email() {
		return contact_email;
	}
	public void setContact_email(String contactEmail) {
		contact_email = contactEmail;
	}
	public String getContact_qq() {
		return contact_qq;
	}
	public void setContact_qq(String contactQq) {
		contact_qq = contactQq;
	}
	public String getLost_detail_info() {
		return lost_detail_info;
	}
	public void setLost_detail_info(String lostDetailInfo) {
		lost_detail_info = lostDetailInfo;
	}
	public LostInfoService getLostinfoService() {
		return lostinfoService;
	}
	public void setLostinfoService(LostInfoService lostinfoService) {
		this.lostinfoService = lostinfoService;
	}
	
	public String ReleaseLostInfo(){
		System.out.println("传来的"+uid);
		LostInfo Linfo = new LostInfo();
		Linfo.setLost_name(lost_name);
		Linfo.setLost_type(lost_type);
		Linfo.setLost_place(lost_place);
		Linfo.setLost_time(lost_time);
		Linfo.setLost_detail_info(lost_detail_info);
		Integer Iuserid = Integer.parseInt(uid);
		Linfo.setUserid(Iuserid);
		Linfo.setReleasetime(new Date());
		Linfo.setContact_name(contact_name);
		Linfo.setContact_mobile(contact_mobile);
		Linfo.setContact_email(contact_email);
		Linfo.setContact_qq(contact_qq);
		lostinfoService.addLostInfo(Linfo);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("ReleaseLostInfo："+username);
		System.out.println("ReleaseLostInfo："+uid);
		return SUCCESS;
	}
	
	public String FindAllLinfo(){
		System.out.println("lostType："+lost_type);
		if(lost_type==null||lost_type.equals("")){
		this.pagination = lostinfoService.queryForPage(10, page);
		System.out.println("page："+page);
		for(int i=1;i<=pagination.getTotalPage();i++){
			this.list.add(1);
			}
		System.out.println("list："+list.size());
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("FindAllInfo："+username);
		System.out.println("FindAllInfo："+uid);
		return SUCCESS;
		}
		this.pagination = lostinfoService.queryByTypeForPage(lost_type, 10, page);
		System.out.println("ByFindTypepage："+page);
		System.out.println("总页数："+pagination.getTotalPage());
		for(int i=1;i<=pagination.getTotalPage();i++){
			this.list.add(1);
			}
		System.out.println("ByFindTypelist："+list.size());
		ActionContext.getContext().put("typename", lost_type);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("ByFindTypeFindAllInfo："+username);
		System.out.println("ByFindTypeFindAllInfo："+uid);
		return SUCCESS;
	}
	
	public String QueryById(){
		System.out.println("选择的"+id);
		this.Linfo = lostinfoService.getById(id);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		return SUCCESS;
	}
}
