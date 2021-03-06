<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Rhett's Blog</title>
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/blog.css">
</head>
<body>
	<!-- 顶部导航 -->
	<nav class="navbar navbar-default navbar-light" id="mainNav">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.html">Rhett's Blog</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					Menu <i class="fa fa-bars"></i>
				</button>
			</div>
			<div id="navbarResponsive" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="nav-item">
						<a>Home</a>
					</li>
					<li class="nav-item">
						<a>About</a>
					</li>
					<li class="nav-item">
						<a>Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	
	<!-- 图片 -->
	<header class="masthead" style="background-image: url('<%= basePath %>assets/images/home-bg.jpg')">
		
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 ">
					<div class="site-heading">
						<h1>Rhett's Blog</h1>
						<span class="subheading">寻找诗和远方</span>
					</div>
				</div>
			</div>
		</div>
		
	</header>
	<!-- 文章列表 -->
	<div class="container">
	
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				
				
				
			<c:forEach var="article" items="${pageBean.data }">
				<div class="post-preview">
					<a href="showArticle?aid=${article.aid}">
						<h2 class="post-title">${article.title }</h2>
						
						</h3>
					</a>
					<p class="post-meta">Posted By <a>Rhett</a> on ${article.publishDate}</p>
				</div>
				
				<hr>
			</c:forEach>
				<!-- <div class="post-preview">
					<a>
						<h2 class="post-title">Java集合框架源码解读(5)——TreeMap</h2>
						<h3 class="post-subtitle">概述 TreeMap也是Map接口的实现类，它最大的特点是迭代有序，默认是按照key值升序迭代（当然也可以设置成降序）...
						</h3>
					</a>
					<p class="post-meta">Posted By <a>Rhett</a> on September 18, 2018</p>
				</div>
				
				<hr> -->
				
				<ul class="pager">
					<li class="next">
						<a>OLDER POSTS &rarr;</a>
					</li>
				</ul>
				
			</div>
		</div>
	
	
	</div>
	
	<hr>
	
	<!-- 底部 -->
	<footer>
	
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li class="list-inline-item">
							<a href="#">
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-github fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
						<li class="list-inline-item">
							<a href="#">
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
						<li class="list-inline-item">
							<a href="#">
								<span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
					</ul>
					
					<p class="copyright text-muted">Copyright &copy; blog.rhett.top 2018</p>
					
				</div>
			</div>
		</div>
	
	</footer>
	<script type="text/javascript" src="<%= basePath %>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/blog.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>