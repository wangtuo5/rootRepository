<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统</title>
</head>
<body>
<center>
<!--logo头开始-->
	


<table width='778' height='74' border='0' cellpadding='0' cellspacing='0'>
	<tr>
	<td>
	<table height='100%' border='0' cellpadding='0' cellspacing='0'>
	<tr>
		<td width='168' height='100%'><a href="http://www.tarena.com.cn" target=_blank><img src="images/logo.png" height="49" width="111" border="0"></a></td>
		<td width='13'><img src="images/sy_03.jpg" height="20" width="13"></td>
		<td width='470' align="right"><h2><br/>电信运营计费系统</h2></td>
		<td width='276'>&nbsp;</td>
		<td width='175' valign='bottom'>&nbsp;用户：<span id="ctxName"><%=session.getAttribute("dodo1")%></span>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="loginout.action">登出</a>
		
		</td>
	</tr>
	</table></td>
  </tr>
</table>
<!--logo头结束-->
<!--功能导航开始-->
	

<!-- 标准标记库 -->

<table width='778' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='13' height='13'><img src="images/sy_10.jpg" height="61" width="13"></td>
		<td width='752' background='images/sy_12.jpg'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr>
				<td align='left'>
				<!-- 这里的工具条上的菜单是由权限决定的,在登录的时候存放在session的modules中 -->
					<a href="mainuser.jsp" class="cl">首页</a><span class="STYLE4">|</span>
					<a href="selfservice/index.jsp" class="cl">用户自服务</a><span class="STYLE4">|</span>
				  
				
  				</td>
      		</tr>
    	</table>
    	</td>
    	<td width='13'><img src="images/sy_13.jpg" height="61" width="14"></td>
  	</tr>
</table>
<!--功能导航开结束-->
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]-->
<center>
<table width='778' height='370' border='1'>
	<tr>
	<!--内容区开始-->
    <td width='100%' align='center' valign='top'>
    
    
    
    
    

<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='40' background='images/index_26.jpg'>&nbsp;</td>
		<!--内容区导航开始-->
		<td align='left' valign='middle' background='images/ctitle_bak_center.jpg'>
		<table border='0' cellspacing='0' cellpadding='0'>
			<tr>
				<td height='31' background='images/ctitle_bak_fcenter.jpg'>
				<a href='main.jsp'  class=channel_title>首页</a>
				</td>
			</tr>
		</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='images/ctitle_bak_center.jpg'>
		<img src="images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>







<table width='100%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td align="center">
			<h1>欢迎使用电信运营计费管理系统 </h1>
			<h2>我们用最真挚的态度为每位用户服务</h2>
		</td>
	</tr>
</table>

	</td>
	<!--内容区结束-->
	</tr>
</table>
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


<!--页面尾巴开始-->
	
<%@include file="common/foot.jsp"%> 
<!--页面尾巴结束-->
</BODY>
</HTML>