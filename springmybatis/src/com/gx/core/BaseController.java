package com.gx.core;import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.support.WebBindingInitializer;

import sun.beans.editors.DoubleEditor;


/** 
 * @author 浣滆�� : 鍒樹笢鍚�
 * @date 鍒涘缓鏃堕棿锛�2016-10-16 涓嬪崍10:30:57 
 * @version 1.0 
 * @param <HttpServletRequest>
 * @param <HttpServletResponse>
 * @param <WebDataBinder>
 */
public  class BaseController<HttpServletRequest, HttpServletResponse, WebDataBinder> {
	
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected String message;
	
	@InitBinder   
    public void initBinder(WebDataBinder binder) {   
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");   
        dateFormat.setLenient(false);   
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true)); 
        binder.registerCustomEditor(double.class, new DoubleEditor());
    }
	
	@ModelAttribute
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
