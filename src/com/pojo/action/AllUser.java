package com.pojo.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.pojo.comom.Pagination;
import com.pojo.model.User;
import com.pojo.service.UserService;


@SuppressWarnings("serial")
public class AllUser extends BaseAction {
	private int page;
	private String power_num;
    private Pagination pagination;
	private String stuId;
	private String trueName;
	private String loginId;
	private String password;
	private String sex;
	private String birthday;
	private String idcard;
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private List<User> userlist = new ArrayList<User>();

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	public String getPower_num() {
		return power_num;
	}

	public void setPower_num(String powerNum) {
		power_num = powerNum;
	}

	public Pagination getPagination() {
		return pagination;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public String getStuId() {
		return stuId;
	}
	
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getLoginId() {
		return loginId;
	}


	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public List<User> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
	
	public String execute() {
        this.pagination = userService.queryForPage(15, page);
        System.out.println("所有用户的："+power_num);
        ActionContext.getContext().put("powerNum", power_num);
        return "alluser";
    }

}
