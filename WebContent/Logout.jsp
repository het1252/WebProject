<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
	Cookie[] ck = request.getCookies();
	session.invalidate();
	
	out.println("<script>alert('�α׾ƿ� �Ͽ����ϴ�.')");
	String h = URLDecoder.decode(ck[0].getValue(),"euc-kr");
	out.println("<script>alert("+h+")");
	response.sendRedirect(URLDecoder.decode(ck[0].getValue(),"euc-kr"));
	
%>