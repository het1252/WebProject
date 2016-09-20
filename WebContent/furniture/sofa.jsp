<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.net.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	Cookie ck = new Cookie("url",URLEncoder.encode("./furniture/sofa.jsp","euc-kr"));
	response.addCookie(ck);
%>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<script>
			function resettext(obj)
			{
				obj.value="search";
			}
			function removetext(obj)
			{
				obj.value="";
			}
		</script>
		<%!
			boolean isset(String h)
			{
				if(h==null) return false;
				if(h.equals("")) return false;
				return true; 
			}
		%>
		<style>
			hr
			{
				margin-left: 0;
   				width:10px;
			}
			#img1
			{
				float:left;
				width:180px;
				height:160px;
				border:1px solid lightgray;
			}
			#objprice
			{
				color:red;
				font-weight:bold;
				font-size:12px;
			}
			#objcontent
			{	
				color:gray;
				font-size:11px;
				font-family:함초롬돋움;
			}
			#objname
			{
				font-size:11px;
				font-family:함초롬돋움;
			}
			#td1{text-align:center;font-family:돋움;font-size:12px;}
			#a1:link { color:black;text-decoration: none;}
			#a1:visited { color:black;text-decoration: none;}
			#a1:active { color:black;text-decoration: none;}
			#a1:hover { color:black;text-decoration:underline;}
			
			#a2:link { color:lightgray;text-decoration: none;}
			#a2:visited { color:lightgray;text-decoration: none;}
			#a2:active { color:lightgray;text-decoration: none;}
			#a2:hover { color:lightgray;text-decoration:underline;}
		</style>
	</head>
	<body>
		<div style="width:100%; height:10px; background-color:black;"></div>
		<div style="width:750px; height:auto;margin:auto;">
			<div style="height:20%;margin-top:15px;" align="center"><a href="../index.jsp"><img src="../img/base/banner.jpg" width="520px" height="170px"></a></div>
			<div style="height:50; width:100%;">
				<div style="width:20%; float:left;">
					<input id="search" type="text" value="search" style="border:0px;border-bottom:lightgray 1px solid;color:lightgray;" onblur="resettext(this);" onclick="removetext(this);"/>
				</div>
				<%
					if(!isset((String)session.getAttribute("name"))){
				%>
						<div style="width:70%;float:right;font-size:13px" align="right";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="a2" href="../login/Login.jsp">Login</a>&nbsp;&nbsp;<a id="a2" href="#">Joinus</a>&nbsp;&nbsp;<a id="a2" href="#">Cart</a>&nbsp;&nbsp;<a id="a2" href="#">Order</a>&nbsp;&nbsp;</div>
				<%
					} 
					else
					{
				%>
						<div style="width:70%;float:right;font-size:13px" align="right";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="a2" href="../login/Login.jsp">Logout</a>&nbsp;&nbsp;<a id="a2" href="#">Cart</a>&nbsp;&nbsp;<a id="a2" href="#">Order</a>&nbsp;&nbsp;<a id="a2" href="#"><%=session.getAttribute("name")%></a></div>
				<%
					}
				%>
				</div><br>
			<div style="height:50px; margin-top:10px; border:1px solid lightgray;" align="center"><br><a id="a1" href="#">전체</a>  /  <a id="a1" href="#">가구</a></div>
			
			<br>
			<div style="height:30px; margin-top:10px;border-bottom:2px solid lightgray;font-family:함초롬돋움;" align="left"><h5><b>BEST PRODUCT</b></h5></div><br>
			<table style="height:180px;border:1px solid lightgray;width:100%;padding-left:3px;padding-right:3px">
				<td>
					<a href="#">
						<img id=img1 src="../img/bed/bed02.jpg"><br>
					</a>
				</td>
				<td>
					<a href="#">
						<img id=img1 src="../img/chir/chir05.jpg"><br>
					</a>
				</td>
				<td>
					<a href="#">
						<img id=img1 src="../img/desk/desk02.jpg"><br>
					</a>
				</td>
				<td>
					<a href="#">
						<img id=img1 src="../img/chir/chir07.jpg"><br>
					</a>
				</td>
			</table>
			
			<div id="test"style="height:30px; margin-top:10px;border-bottom:1px solid lightgray;font-family:함초롬돋움;" align="left"><h5><b>CATEGORY LIST</b></h5></div>
			<div style="height:30px;background-color:lightgray;">
				<table style="width:100%; padding-top:5px;" >
					<td id="td1"><a id="a1" href="../furniture/new.jsp#test">N E W</a></td><td id="td1"><a id="a1" href="../furniture/best.jsp#test">BEST</a></td><td id="td1"><a id="a1" href="../furniture/desk.jsp#test">책 상</a></td><td id="td1"><a id="a1" href="../furniture/chir.jsp#test">의 자</a></td><td id="td1"><a id="a1" href="#test">소 파</a></td><td id="td1"><td id="td1"><a id="a1" href="../furniture/bed.jsp#test">침 대</a></td>
				</table>
			</div>
			<br>
			<font size="2.5px" weight="400">TOP 카테고리에 총 n개의 상품이 있습니다.</font>
			<br>
			<table style="height:180px;width:100%;align:left;">
				<tr>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa01.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa02.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa03.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa04.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
				</tr>
			</table>
			<table style="height:180px;width:100%;align:left;">
				<tr>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa05.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa06.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa07.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
					<td>
						<a id="a1"href="#">
							<img id=img1 src="../img/sofa/sofa08.jpg">
							<b style="border-bottom:2px solid lightgray;">&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
							<font id="objcontent">i love macarong sweet time</font><br>
							<font id="objname">디자인과 함께하는 <i>M</i>&nbsp;&nbsp;HKA</font><br>
							<font id="objprice">30000원</font>
						</a>
					</td>
				<tr>
			</table>
		</div>
		<br><br><br>
		<div style="color:white;width:100%;height:*%;background-color:lightgray;margin:auto;"align="center"><br>
			<font size="5px" style="font-weight:bolder"><i>M</i> &nbsp;H K A</font><br>
			<font size="4px">style</font>
			
			<div style="width:100px; height:150px; background-color:white" align="center">
				<img src="../img/base/hanger.PNG" width="95%" height="60px">
				<font color="#CD2E57" size="2"><i>070-000-0000</i></font><br>
				<font color="lightgray" size="1"><i>해당 문서는 html로 &nbsp;작성이 되었습니다.</i></font>
			</div><br>
			Copyright @ Since 2016 아무개.net. All Rights Reserved.<br>
			아무개@google.com</a> Tel. 070-0000-0000<br>
			Link Free : Click here to get link URLs.
		</div>
	</body>
</html>