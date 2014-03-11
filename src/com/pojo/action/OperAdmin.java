package com.pojo.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.Admin;
import com.pojo.service.AdminService;

@SuppressWarnings("serial")
public class OperAdmin extends ActionSupport {
	
	private String login_name;
	private String password;
	private String power_num;
	private String validateCode;
	private Admin admin;
	private AdminService adminService;
	
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String loginName) {
		login_name = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPower_num() {
		return power_num;
	}
	public void setPower_num(String powerNum) {
		power_num = powerNum;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public String getValidateCode() {
		return validateCode;
	}
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	public String AddAdmin(){
		Admin admin = new Admin();
		System.out.println(power_num);
		admin.setLogin_name(login_name);
		admin.setPassword(password);
		if(power_num.equals("1")){
			admin.setPower("一级管理员");
		}
		else{
			admin.setPower("二级管理员");
		}
		admin.setPower_num(power_num);
		adminService.add(admin);
		return SUCCESS;
	}
	
	public String Adminlogin(){
		System.out.println(login_name);
		admin = adminService.adminlogin(login_name, password);
		String code=(String)ActionContext.getContext().getSession().get("VALIDATECODE");
		System.out.println(code);
    	System.out.println(validateCode);
		if(admin==null){
			addActionMessage("请输入正确的登陆账号和密码！");
			return INPUT;
		}
		if(validateCode==null || "".equals(validateCode) || !validateCode.equals(code)){
			addActionMessage("验证码输入有误！");
			return INPUT;
    	}
		if(admin!=null && validateCode!=null && !"".equals(validateCode) && validateCode.equals(code)){
			System.out.println(admin.getLogin_name());
	    	System.out.println(admin.getPower());
	    	System.out.println(admin.getPower_num());
	    	ActionContext.getContext().put("adminName", admin.getLogin_name());
			ActionContext.getContext().put("power",admin.getPower());
			ActionContext.getContext().put("powerNum",admin.getPower_num());
			return SUCCESS;
		}
		return null;
	}
	
	public String powerToAdd() {
		ActionContext.getContext().put("powerNum",power_num);
		return SUCCESS;
	}
}
