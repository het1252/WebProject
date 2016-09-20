<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.net.*" %>

<%	
	Cookie[] ck = request.getCookies();
	
	String id = new String(request.getParameter("id").getBytes("8859_1"),"euc-kr");
	String pwd = new String(request.getParameter("pwd").getBytes("8859_1"),"euc-kr");
	boolean check;
	try
	{
		check = false;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/shop","yong1","1111");
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from user");
		
		while(rs.next())
		{
			if(id.equals(rs.getString("id"))&&pwd.equals(rs.getString("password")))
			{
				check=true; break;
			}
		}
		
		if(check)
		{
			 session.setAttribute("name", id); 
			 response.sendRedirect(URLDecoder.decode(ck[0].getValue(),"euc-kr"));
			 Cookie cc = new Cookie("name","");
			 cc.setMaxAge(0);
			 response.addCookie(cc);
		}
		else
		{
			response.sendRedirect("./login/Login.jsp?bid="+check);
		}
	}
	catch(Exception e)
	{
		out.println(e);	
	}
%>
