<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登录 - 电信运营系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="head.jsp"%>

		<div class="enter_part">

			<%@include file="introduce.jsp"%>

			<div class="enter_in">
				<div class="bj_top"></div>
				<div class="center">
					<div style="height: 30px; padding: 5px; color: red"
						id="divErrorMssage">
						<br />
							<span style="color:red">   <!--一系列验证说明 -->
								<s:actionmessage />
							</span>
							<span style="color:red">
								<s:property value="errors['password']"/> <br/>
							</span>
							<span style="color:red">
								<s:property value="errors['name']"/>
							</span>
					</div>
					<div class="main">
						<h3>
							登录
						</h3>
						 <br/> 
						<s:form action="login.action" method="post" id="ctl00" theme="simple" >
						<s:token></s:token>
							<ul>
								<li>
									<span>类型选择：</span>
									<s:select name="typelist" id="txtUsername" list="#{'0':'管理员登录','1':'用户登录'}" ></s:select>
								</li>
								<li>
									<span> &nbsp;&nbsp;&nbsp;&nbsp;账户：</span>
									<s:textfield name="name" id="txtUsername" cssClass="textbox" ></s:textfield>
								</li>
								<li>
									<span>&nbsp;&nbsp;&nbsp;&nbsp;密码：</span>
									<s:password name="password" id="txtPassowrd" cssClass="textbox" ></s:password>
								</li>
								<li>
									<s:submit id="btnSignCheck" cssClass="button_enter"  value="登 录"></s:submit>
								</li>
							</ul>
							<!-- 
							<input type="hidden" name="uri" value="${uri}" />
							 -->
						</s:form>
					</div>
					<div class="user_new">
						<p>
							我们一直在努力！
						</p>
						<p class="set_up">
							<a href="">切换模式&gt;&gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<%@include file="foot.jsp"%>

	</body>
</html>

