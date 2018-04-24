<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Article</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/admin.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/article.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/metisMenu/metisMenu.min.css">
	
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/dataTables.bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/dataTables.responsive.css">
</head>
<body>
	<div class="wrapper">
		<%@ include file="/WEB-INF/admin/include/sidebar.jsp" %>
		
		<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header">文章列表</h2>
                    </div>
                    <div class="panel-body">
                    	<table class="table table-bordered table-striped table-hover" id="articleDataTable">
                    		<thead>
                    			<th>文章标题</th>
                    			<th>发布时间</th>
                    			<th>浏览量</th>
                    			<th>状态</th>
                    			<th>操作</th>
                    		</thead>
                    		<tbody>
                    			<tr>
                    				<td>1</td>
                    				<td>2</td>
                    				<td>3</td>
                    				<td>4</td>
                    				<td>5</td>
                    			</tr>
                    			<tr>
                    				<td>a</td>
                    				<td>b</td>
                    				<td>c</td>
                    				<td>d</td>	
                    				<td>e</td>
                    			</tr>
                    			<c:forEach var="article" items="${pageBean.pageData}">
                    				<tr>
	                    				<td>${article.title }</td>
	                    				<td>${article.title }</td>
	                    				<td>${article.title }</td>
	                    				<td>${article.title }</td>	
	                    				<td>${article.title }</td>
                    				</tr>
                    			</c:forEach>
                    		</tbody>
                    	</table>
                    </div>
                    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
		
	</div>
	
	
	<script type="text/javascript" src="<%= basePath %>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/metisMenu/metisMenu.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/admin.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#articleDataTable').DataTable({
				
			});
		});
	</script>
</body>
</html>