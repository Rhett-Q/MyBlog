<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <title>Article</title>
    <link rel="stylesheet" type="text/css" href="<%= basePath %>css/article.css">
</head>
<body>
	<form action="">
	    <div class="article-wrapper">
	    	<div class="article-title form-group">
	    		<span class="label label-primary">文章标题</span>
	    		<input type="text" name="title" placeholder="请输入文章标题" class="form-control">
	    	</div>
	    	<div>
	    		<textarea id="ckeditor_standard" placeholder="Enter text ..."></textarea>
	    	</div>
	    	<div>
	    		<select class="bootstrap-select">
	    			<option>分类</option>
	    			<option>分类1</option>
	    			<option>分类2</option>
	    			<option>分类3</option>
	    			<option>分类4</option>
	    		</select>
	    	</div>
	    </div>
    </form>
    <script type="text/javascript">
    	
					$(function() {
						$('textarea#ckeditor_standard').ckeditor({
									width : '98%',
									height : '150px',
									toolbar : [{name : 'document',items : [ 'Source', '-','NewPage', 'Preview','-', 'Templates' ]},
											[ 'Cut', 'Copy', 'Paste','PasteText','PasteFromWord', '-','Undo', 'Redo' ], {
												name : 'basicstyle',
												items : [ 'Bold', 'Italic' ]
											} ]
								});
					});
				</script>
</body>
</html>