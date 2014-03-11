package com.pojo.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.comom.Pagination;
import com.pojo.model.FindInfo;
import com.pojo.service.FindInfoService;

@SuppressWarnings("serial")
public class FoundInfo extends ActionSupport {
	private int page;
    private Pagination pagination;
    private FindInfo Finfo;
    List<Integer> list = new ArrayList<Integer>();
    private Integer id;
	private String uid;
	private String findId;
	private String username;
	private String find_name;	
	private String find_type;	
	private String find_place;	
	private String find_time;	
	private String contact_name;	
	private String contact_mobile;
	private String contact_email;
	private String contact_qq;	
	private String find_detail_info;
	private FindInfoService findinfoService;
	
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
	public FindInfo getFinfo() {
		return Finfo;
	}
	public void setFinfo(FindInfo finfo) {
		Finfo = finfo;
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
	public String getFindId() {
		return findId;
	}
	public void setFindId(String findId) {
		this.findId = findId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFind_name() {
		return find_name;
	}
	public void setFind_name(String findName) {
		find_name = findName;
	}
	public String getFind_type() {
		return find_type;
	}
	public void setFind_type(String findType) {
		find_type = findType;
	}
	public String getFind_place() {
		return find_place;
	}
	public void setFind_place(String findPlace) {
		find_place = findPlace;
	}
	public String getFind_time() {
		return find_time;
	}
	public void setFind_time(String findTime) {
		find_time = findTime;
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
	public String getFind_detail_info() {
		return find_detail_info;
	}
	public void setFind_detail_info(String findDetailInfo) {
		find_detail_info = findDetailInfo;
	}
	
	public FindInfoService getFindinfoService() {
		return findinfoService;
	}
	public void setFindinfoService(FindInfoService findinfoService) {
		this.findinfoService = findinfoService;
	}
	
	public String ReleaseFindInfo(){
		FindInfo Finfo = new FindInfo();
		Finfo.setFind_name(find_name);
		Finfo.setFind_type(find_type);
		Finfo.setFind_place(find_place);
		Finfo.setFind_time(find_time);
		Finfo.setFind_detail_info(find_detail_info);
		Finfo.setContact_name(contact_name);
		Finfo.setContact_mobile(contact_mobile);
		Finfo.setContact_email(contact_email);
		Finfo.setContact_qq(contact_qq);
		Integer Iuserid = Integer.parseInt(uid);
		Finfo.setUserid(Iuserid);
		Finfo.setReleasetime(new Date());
		System.out.println(find_name);
		System.out.println(find_time);
		System.out.println("String："+uid);
		System.out.println("Integer："+Iuserid);
		System.out.println(new Date());
		findinfoService.addFindInfo(Finfo);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("ReleaseFindInfo："+username);
		System.out.println("ReleaseFindInfo："+uid);
		return SUCCESS;	
	}
	
	public String AdminAddFindInfo(){
		FindInfo Finfo = new FindInfo();
		Finfo.setFind_name(find_name);
		Finfo.setFind_type(find_type);
		Finfo.setFind_place(find_place);
		Finfo.setFind_time(find_time);
		Finfo.setFind_detail_info(find_detail_info);
		Finfo.setContact_name(contact_name);
		Finfo.setContact_mobile(contact_mobile);
		Finfo.setContact_email(contact_email);
		Finfo.setContact_qq(contact_qq);
		Finfo.setUserid(0);
		Finfo.setReleasetime(new Date());
		findinfoService.addFindInfo(Finfo);
		return SUCCESS;	
	}
	
	public String FindAllFinfo(){
		System.out.println("findType："+find_type);
		if(find_type==null||find_type.equals("")){
		this.pagination = findinfoService.queryForPage(10, page);
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
		this.pagination = findinfoService.queryByTypeForPage(find_type, 10, page);
		System.out.println("ByFindTypepage："+page);
		System.out.println("总页数："+pagination.getTotalPage());
		for(int i=1;i<=pagination.getTotalPage();i++){
			this.list.add(1);
			}
		System.out.println("ByFindTypelist："+list.size());
		ActionContext.getContext().put("typename", find_type);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("ByFindTypeFindAllInfo："+username);
		System.out.println("ByFindTypeFindAllInfo："+uid);
		return SUCCESS;
	}
	
	public String QueryByTNP() {
		System.out.println("物品类型："+find_type);
		System.out.println("物品名称："+find_name);
		System.out.println("拾到地点："+find_place);
		if((find_type==null||find_type.equals(""))&&(find_name==null||find_name.equals(""))&&(find_place==null||find_place.equals(""))){
			this.pagination = findinfoService.queryForPage(10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if((find_name==null||find_name.equals(""))&&(find_place==null||find_place.equals(""))){
			this.pagination = findinfoService.queryByTypeForPage(find_type, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if((find_type==null||find_type.equals(""))&&(find_place==null||find_place.equals(""))){
			this.pagination = findinfoService.queryByNameForPage(find_name, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if((find_type==null||find_type.equals(""))&&(find_name==null||find_name.equals(""))){
			this.pagination = findinfoService.queryByPlaceForPage(find_place, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if(find_place==null||find_place.equals("")){
			this.pagination = findinfoService.queryByTypeAndNameForPage(find_type, find_name, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if(find_name==null||find_name.equals("")){
			this.pagination = findinfoService.queryByTypeAndPlaceForPage(find_type, find_place, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		if(find_type==null||find_type.equals("")){
			this.pagination = findinfoService.queryByNameAndPlaceForPage(find_name, find_place, 10, page);
			System.out.println(pagination.getAllRow());
			return SUCCESS;
		}
		this.pagination = findinfoService.queryByTypeNamePlaceForPage(find_type, find_name, find_place, 10, page);
		System.out.println(pagination.getAllRow());
		return SUCCESS;
	}
	
	public String CodelookContact(){
		String find_id = Integer.toString(id);
		ActionContext.getContext().put("find_id", find_id);
		return SUCCESS;	
	}
	
	public String LookContactById(){
		Integer findid = Integer.parseInt(findId);
		this.Finfo = findinfoService.getById(findid);
		return SUCCESS;
	}
	
	public String QueryById(){
		System.out.println(id);
		System.out.println(uid);
		this.Finfo = findinfoService.getById(id);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("QueryById："+username);
		System.out.println("QueryById："+uid);
		return SUCCESS;
	}
	
	public String AdminQueryById(){
		System.out.println(id);
		this.Finfo = findinfoService.getById(id);
		return SUCCESS;
	}
	
	public String AdminDeleteById(){
		System.out.println(id);
		Finfo = findinfoService.getById(id);
		this.findinfoService.deleteFinfo(Finfo);
		return SUCCESS;
	}
}
