<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    			<%-- <c:forEach var="article" items="${pageBean.pageData}">
                    				<tr>
	                    				<td>${article.title }</td>
	                    				<td>
	                    					<fmt:formatDate value="${article.publishDate }" pattern="yyyy年MM月dd日 HH:mm:ss"/>
	                    				</td>
	                    				<td>${article.hits }</td>
	                    				<td>
	                    					<c:if test="${article.isDraft eq '0'}">已发布</c:if>
	                    					<c:if test="${article.isDraft eq '1'}">草稿</c:if>
	                    				</td>
	                    				<td>
	                    					<button type="button" class="btn btn-primary" onclick="window.location.href='editArticle?aid=${article.aid}'">编辑</button>
	                    					<button type="button" class="btn btn-danger">删除</button>
	                    					<button type="button" class="btn btn-success">预览</button>
	                    				</td>
                    				</tr>
                    			</c:forEach> --%>
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
				"searching": false,
				"serverSide": true,
				"ajax": 'articleList',
				"columns": [
					{"data": "title"},
					{"data": "publishDate"},
					{"data": "hits"},
					{
						"data": "isDraft",
						"render": function ( data, type, row, meta ) {
							return data == '1' ? '草稿':'已发布';
							}
				    },
					{"data": "aid", "render": function(data, type, row, meta) {
						var btn1 = "<button type='button' class='btn btn-primary' onclick=\"window.location.href='editArticle?aid=" + data + "'\">编辑</button> ";
						var btn2 = " <button type='button' class='btn btn-danger' onclick=\"window.location.href='delArticle?aid=" + data + "'\">删除</button> ";
						var btn3 = " <button type='button' class='btn btn-warning' onclick=\"window.location.href='showArticle?aid=" + data + "'\">预览</button>";
						return btn1+btn2+btn3;
					} }]
			});
		});
	</script>
</body>
</html>