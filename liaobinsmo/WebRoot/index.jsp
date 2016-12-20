<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>Staff</title>
	<meta charset="UTF-8">
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/icon.css" />
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.easyui.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
  
  <body>
   <div style="margin: 10px 30px">

		<div style="margin-top: 10px">
			<table id="staffDataGrid">

			</table>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
		  $("#staffDataGrid").datagrid({
			  url : "staffController_list",
        title : '员工表',
        fitColumns : true, 
        striped : true,    
        rownumbers : true, 
        columns:[[{ 
          field : 'ename', 
          title : '姓名',
          width : 50,
          checkbox : true,
          sortable : true
        }, {
          field : 'job',
          title : '职位',
          width : 100,
          sortable : true,
        }, {
         field : 'dname',
         title : '部门名称',
         width : 100,
         sortable : true,
       }, {
         field : 'loc',
         title : '地址',
         width : 100,
         sortable : true,
       }, {
          field : 'sal',
          title : '薪资',
          width : 100,
          sortable : true,
        }]]
		  });
	  });
	</script>
  </body>
</html>
