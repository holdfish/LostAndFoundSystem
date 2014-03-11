package com.ImageCode.Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class CodeAction extends ActionSupport {
	private String validateCode;
	
	private String findId;
	
    public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public String getFindId() {
		return findId;
	}

	public void setFindId(String findId) {
		this.findId = findId;
	}

	public String init(){
    	String code=(String)ActionContext.getContext().getSession().get("VALIDATECODE");
    	System.out.println(code);
    	System.out.println(findId);
    	System.out.println(validateCode);
    	if(validateCode!=null  && validateCode.equals(code)){
    		return SUCCESS;
    	}else{
    		ActionContext.getContext().put("find_id", findId);
    		addActionMessage("验证码不正确!");
    		return INPUT;
    	}
    }
}
