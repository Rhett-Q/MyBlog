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
	<link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrap-tagsinput.css">
    <link rel="stylesheet" type="text/css" href="<%= basePath %>assets/css/bootstrapValidator.min.css">
</head>
<body>
	<div class="wrapper">
		<%@ include file="/WEB-INF/admin/include/sidebar.jsp" %>
		<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header">添加文章</h2>
                       
                        <form action="updateArticle" method="post">
                        	<input type="hidden" name="aid" value="${article.aid }">
						    <div class="article-wrapper">
						    	<div class="article-title form-group">
						    		<div class="label label-primary">文章标题</div>
						    		<input type="text" name="title" value="${article.title }" placeholder="请输入文章标题" class="form-control">
						    	</div>
						    	
						    	<div class="form-group">
						    		<textarea id="ckeditor_standard" name="content">${article.content }</textarea>
						    	</div>
						    	
						    	<div class="article-tag form-group">
									  <span class="label label-primary">标签</span>
									  <input type="text" class="form-control" placeholder="请输入标签" name="tags" data-role="tagsinput">
								</div>
						    	
						    	<div class="article-category form-group">
						    		<div class="label label-primary">文章分类</div>
						    		<select id="category" title="请选择分类" name="category.cid">
						    			<c:forEach var="category" items="${categorys }">
						    				<option value="${category.cid }">${category.categoryName }</option>
						    			</c:forEach>
						    		</select>
						    	</div>
						    	
						    	<div>
						    		<button type=submit class="btn btn-primary">发布文章</button>
						    		<button type="submit" class="btn btn-warning">存为草稿</button>
						    		<button type="submit" class="btn btn-danger">取消</button>
						    	</div>
						    	
						    </div>
					    </form>
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
    <script type="text/javascript" src="<%= basePath %>assets/js/bootstrap-tagsinput.min.js"></script>
    <script type="text/javascript" src="<%= basePath %>assets/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript">
			$(function() {
				$('textarea#ckeditor_standard').ckeditor({});
				
				$('#category').selectpicker({
					  width: 200,
					  size: 4
					});
				
				$('#category').selectpicker('val', '${article.category.cid}');
				
		        $('#category').selectpicker('render');
		        
		        $('form').bootstrapValidator({
		        	message: 'This value is not valid',
	                feedbackIcons: {
	                    valid: 'glyphicon glyphicon-ok',
	                    invalid: 'glyphicon glyphicon-remove',
	                    validating: 'glyphicon glyphicon-refresh'
	                },
	                fields: {
	                	title: {
	                		validators: {
	                			notEmpty: {
	                				message: "标题不能为空！"
	                			}
	                		}
	                	}
	                }
		        });
		        
		        $("input[name=tags]").tagsinput({
		        	itemValue: 'value',
					itemText: 'tagName'
				});
		        
		        <c:forEach var="tag" items="${article.tags }">
			        $("input[name=tags]").tagsinput('add', {
						"value": '${tag.tagName}',
						"tagName": '${tag.tagName}'
					});
		    	</c:forEach>
		        
		    	/* $("#category option[value='" + ${article.category.cid} +"']").attr("selected", "selected"); */
			});
			
			/* function volidate() {
				var title = $("input[name=title]").val();
				var content = $("textarea[name=content]").val();
				var tags = $("input[name=tags]").val();
				var category = $("#category option:selected").val();
				
				if (title.length == 0) {
					
				}
				
			} */
			
			
	</script>
</body>
</html>