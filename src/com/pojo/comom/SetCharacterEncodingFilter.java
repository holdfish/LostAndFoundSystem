package com.pojo.comom;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*一个处理中文乱码问题的过滤器*/


//定义字符转换类并实现Filter接口
public class SetCharacterEncodingFilter implements Filter{

	/*
	 * 定义一个默认值的String类型的encoding对象
	 * 用于将通过Request请求的字符集类型传入到此过滤器中
	 * */
	protected String encoding = null;
	/*
	 * 定义一个此过滤器的联合构造对象
	 * 如果此值为空，说明这个过滤器没有被实例化
	 * */
	protected FilterConfig filterConfig = null;
	/*
	 * 定义一个Boolean型的变量，用于说明客户端的字符编码是否被忽视
	 * */
	protected boolean ignore = true;
	
	public void destroy() {
		// TODO Auto-generated method stub
		this.encoding = null;
		this.filterConfig = null;
	}
	
	/*
	 * 实现doFilter（）方法
	 * 选择并将设置的字符编码给予使用
	 * 说明请求的请求参数
	 * 
	 * 
	 * @param request 需要处理的servlet请求
	 * */

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		if (ignore || (arg0.getCharacterEncoding() == null)) {
			//如果忽视客户端的编码方式，或者骑过request对象得到的
			//编码方式为null,将编码方式 设置成想要转换的方式
			String encoding = selectEncoding(arg0);
			if (encoding != null) {//如果encoding不为null，将此编码方式设置成request的编码方式
				arg0.setCharacterEncoding(encoding);
			}
			
			arg2.doFilter(arg0, arg1);//通过控制传递给下一个过滤器
		}
	}
	
	/*
	 * 选择适当的字符编码被使用，基于当前request特有的过滤器初始化的值
	 * 如果没有设置编码方式返回null
	 * 此默认并被无条件执行返回的值，被用于设置此过滤器的初始化编码方式
	 * */
	
	private String selectEncoding(ServletRequest arg0) {
		// TODO Auto-generated method stub
		return (this.encoding);
	}

	/*
	 * 实现init（）方法，初始化此过滤器
	 * */
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		this.filterConfig = arg0;
		this.encoding = arg0.getInitParameter("encoding");
		String value = arg0.getInitParameter("ignore");
		if(value == null)
			this.ignore = true;
		else if (value.equalsIgnoreCase("true")) {
			this.ignore = true;
		}
		else if (value.equalsIgnoreCase("yes")) {
			this.ignore = true;
		}
		else {
			this.ignore = false;
		}	
	}

}
