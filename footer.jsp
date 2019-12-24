<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>page-tail</title>
</head>
<body>
<div class="footer">
		<div class="container">
			<div class="row footer-top">
				<div class="col-sm-6 col-lg-6">
					<h3>后续内容持续加载</h3>
					<p>坚持！不断坚持！</p>
				</div>
				<div class="col-sm-6  col-lg-5 col-lg-offset-1">
					<div class="row about">
						<div class="col-xs-3">
							<h4>我是谁</h4>
							<ul class="list-unstyled">
								<li><a href="#">我的简历</a></li>
								<li><a href="#">个人博客</a></li>
								<li><a href="#">Github</a></li>
								<li><a href="#">CSDN</a></li>
							</ul>
						</div>
						<div class="col-xs-3">
							<h4>找到我</h4>
							<ul class="list-unstyled">
								<li><a href="#"
									title="XXX" target="_blank">微信</a></li>
								<li><a href="mailto:#">QQ</a></li>
								<li><a href="mailto:#">公众号</a></li>
							</ul>
						</div>
						<div class="col-xs-3">
							<h4>C加加</h4>
							<ul class="list-unstyled">
								<li><a href="http://www.cplusplus.com/" target="_blank">cplusplus.com</a></li>
								<li><a href="https://leetcode-cn.com/" target="_blank">Leetcode中国</a></li>
							</ul>
						</div>
						<div class="col-xs-3">
							<h4>好资源</h4>
							<ul class="list-unstyled">
								<li><a href="# target="_blank">百度云盘</a></li>
							</ul>
						</div>
					</div>

				</div>

			</div>
			<hr/>
			<div class="row footer-bottom">
				<ul class="list-inline text-center"><!-- 考虑换成过滤器 p151 -->
					<li><a href="#" target="_blank">@copyright fanyongqi</a></li>
					<li>20191130</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>