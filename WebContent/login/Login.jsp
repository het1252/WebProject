<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Insert title here</title>
		<script>
			function test()
			{
				var check = "<%=request.getParameter("bid")%>";
				
				if(check=="false")
				{
					alert("아이디 비민번호를 확인해주세요");
				}
			}
			function resettext(obj,value)
			{
				if(obj.value=="")
				{
					obj.value=value;
					obj.style.color="lightgray";
				}
			}
			function removetext(obj)
			{
				if(obj.value=="아이디" || obj.value=="비밀번호비밀번호")
				{
					obj.value="";
					obj.style.color="black";
				}
			}
			function move()
			{
				document.hhhh.submit();
			}
		</script>
		<style>
			#a2:link { color:gray;text-decoration: none;}
			#a2:visited { color:lightgray;text-decoration: none;}
			#a2:active { color:lightgray;text-decoration: none;}
			#a2:hover { color:lightgray;text-decoration:none;}
			#a2{cursor:pointer;}
		</style>
	</head>
	<body  onload="test();">
		<form name="hhhh" action="../LoginCheck.jsp" method="post">
			<div style="width:100%; height:10px; background-color:black;"></div>
			<div style="width:750px; height:auto;margin:auto;">
				<div style="height:20%;margin-top:15px;" align="center"><a href="../index.html"><img src="../img/base/banner.jpg" width="520px" height="170px"></a></div>
				<div align="center">
					<div style="width:60%;">
						<input type="text" name="id" style="width:100%; height:50px; padding-left:5px; border:1px solid lightgray;color:lightgray" value="아이디" onclick="removetext(this)" onblur="resettext(this,'아이디')">
						<br><br>
						<input type="password" name="pwd" style="width:100%;height:50px;padding-left:5px;border:1px solid lightgray;color:lightgray" value="비밀번호비밀번호" onclick="removetext(this)" onblur="resettext(this,'비밀번호비밀번호')">
						<br><br>
						<table style="width:100%; text-align:center;" >
							<tr>
								<td><a id="a2" onclick="move();">sign in</a></td>
								<td><a id="a2" href="signup.html">sign up</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			
			<br><br><br>
			<div name="hh" style="color:white;width:100%;height:*%;background-color:lightgray;margin:auto;"align="center"><br>
				<font size="5px" style="font-weight:bolder"><i>M</i> &nbsp;H K A</font><br>
				<font size="4px">style</font>
				
				<div style="width:100px; height:150px; background-color:white" align="center">
					<img src="../img/base/hanger.PNG" width="95%" height="60px">
					<font color="#CD2E57" size="2"><i>070-000-0000</i></font>
					<font color="lightgray" size="1"><i>해당 문서는 html로 &nbsp;작성이 되었습니다.</i></font>
				</div><br>
				Copyright @ Since 2016 아무개.net. All Rights Reserved.<br>
				<a id="a2" href="#hh">아무개@google.com</a> Tel. 070-0000-0000<br>
				Link Free : Click here to get link URLs.
			</div>
		</form>
	</body>
</html>