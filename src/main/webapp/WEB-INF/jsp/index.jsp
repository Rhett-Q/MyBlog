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
	<link rel="stylesheet" type="text/css" href="<%= basePath %>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>css/admin.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>css/bootstrap-select.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>metisMenu/metisMenu.min.css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

			<div class="navbar-header">
			
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="index.html">RHett Admin</a>				
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-messages">
						<li>
							<a href="#">
								<div>
									<strong>Rhett</strong>
									<span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>	
								</div>
								<div>testtesttesttesttesttesttesttest</div>
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="#">
								<div>
									<strong>Rhett</strong>
									<span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>	
								</div>
								<div>testtesttesttesttesttesttesttest</div>
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="#" class="text-center">
								<strong>Read All Messages</strong>
								<i class="fa fa-angle-right"></i>
							</a>
						</li>

					</ul>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li>
							<a href="#">
								<div>
									<P>
										<strong>Task 1</strong>
										<span class="pull-right text-muted">40% Complete</span>
									</P>
									<div class="progress">
										<div class="progress-bar" style="width: 40%;">
											<span class="sr-only">40% Compelte(Success)</span>
										</div>
									</div>
								</div>
							</a>
						</li>

						<li class="divider"></li>

						
						<li>
							<a href="#">
								<div>
									<P>
										<strong>Task 2</strong>
										<span class="pull-right text-muted">60% Complete</span>
									</P>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											<span class="sr-only">60% Compelte</span>
										</div>
									</div>
								</div>
							</a>
						</li>

						<li class="divider"></li>						
						
						<li>
							<a href="#" class="text-center">
								<strong>See All Tasks</strong>
								<i class="fa fa-angle-right"></i>
							</a>
						</li>

					</ul>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li>
							<a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment
									<span class="pull-right text-muted small">4 minutes age</span>
								</div>
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted
									<span class="pull-right text-muted small">10 minutes ago</span>
								</div>
							</a>
						</li>

						<li class="divider"></li>
					
						<li>
							<a href="#" class="text-center">
								<strong>See All Alerts</strong>
								<i class="fa fa-angle-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-gear fa-fw"></i> Setting</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
						</li>
					</ul>
				</li>

			</ul>
			
			<div class="navbar-default sidebar" role="navigation">
				<div class="navbar-collapse sidebar-nav">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search..." name="">
								<span class="input-group-btn">
									<button class="btn btn-default">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
						</li>
						<li>
							<a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="float.html">Float Charts</a>
								</li>
								<li>
									<a href="morris,html">Morris.js Charts</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
						</li>

						<li>
							<a href="javascript:void(0)" id="article"><i class="fa fa-edit fa-fw"></i> Publish Article</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="panel-wells.html">Panels and Wells</a>
								</li>
								<li>
									<a href="buttons.html">Buttons</a>
								</li>
								<li>
									<a href="typography.html">Typography</a>
								</li>
								<li>
									<a href="icons.html"> Icons</a>
								</li>
								<li>
									<a href="grid.html">Grid</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#"><i class="fa fa-sitemap fa-fw"></i> Muti-Level Dropdown<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="#">Second Level Item</a>
								</li>
								<li>
									<a href="#">Thrid Level<span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
										<li>
											<a href="#">Third Level Item</a>
										</li>
										<li>
											<a href="#">Third Level Item</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li>
							<a href="#"><i class="fa fa-files-o fa-fw"></i> Simple Pages<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
									<a href="blank.html">Blank Pages</a>
								</li>
								<li>
									<a href="login.html">Login Page</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>

		</nav>
			
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
	<script type="text/javascript" src="<%= basePath %>js/jquery.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>metisMenu/metisMenu.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>js/admin.js"></script>
	<script src="<%= basePath %>ckeditor/ckeditor.js"></script>
	<script src="<%= basePath %>ckeditor/adapters/jquery.js"></script>
	<script type="text/javascript">
		
		$(function() {
			$("#article").click(function() {
				 $.ajax({
				 	type: "GET",
				 	url: "article",
				 	success: function(data) {
				 		
				 		$("#page-wrapper").html(data);
				 	}
				 });
			});
		});

	</script>
</body>
</html>