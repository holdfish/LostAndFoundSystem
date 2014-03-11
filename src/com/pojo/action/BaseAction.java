package com.pojo.action;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings({ "unused", "serial" })
public class BaseAction extends ActionSupport{
	//基础操作
	private String action = "index";
	//获取action属性值
	public String getAction() {
		return action;
	}
	//设置action属性值
	public void setAction(String action) {
		this.action = action;
	}
	//基础execute方法
	public String execute(){
		try{
			return this.executeMethod(this.getAction());
		}catch (Exception e){
			e.printStackTrace();
			return INPUT;
		}
	}
	//根据UI传入参数,动态调用方法
	@SuppressWarnings("unchecked")
	private String executeMethod(String method) throws Exception {
		// TODO Auto-generated method stub
		Class [] c = null;
		Method m =this.getClass().getMethod(method, c);
		Object [] o = null;
		String result = (String)m.invoke(this, o);
		return result;
	}
}
