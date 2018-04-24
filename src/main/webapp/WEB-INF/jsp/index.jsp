<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>Boostrap</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/admin.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/metisMenu/metisMenu.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap-select.min.css">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/admin/include/sidebar.jsp" %>
		
		<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Welcome Rhett's Blog</h1>
                    </div>
                    <!-- /.col-lg-12 -->
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
	<script src="<%= basePath %>assets/ckeditor/ckeditor.js"></script>
	<script src="<%= basePath %>assets/ckeditor/adapters/jquery.js"></script>
	<script type="text/javascript" src="<%= basePath %>assets/js/bootstrap-select.min.js"></script>
</body>
</html>