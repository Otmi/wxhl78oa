<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<jsp:include page="/WEB-INF/commons/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/commons/js.jsp"></jsp:include>
<title></title>

</head>
<body>
	<!-- 头 -->
	<div class="header">
		<ul class="header_menu">
			<li class="list_icon"><a href="#">&nbsp;</a></li>
		</ul>
	</div>

	<div class="menu">

		<div class="breadLine">
			<div class="arrow"></div>
			<div class="adminControl active">Hi, 尊敬的管理员</div>
		</div>
		<!-- 管理员 -->
		<div class="admin">
			<div class="image">
				<img
					src="${pageContext.request.contextPath }/sources/img/users/aqvatarius.jpg"
					class="img-polaroid" />
			</div>
			<ul class="control">
				<li><span class="icon-share-alt"></span> <a href="login.html">退出</a></li>
			</ul>
		</div>

		<ul class="navigation">
			<li><a
				href="${pageContext.request.contextPath }/student/showPersonal">
					<span class="isw-grid"></span><span class="text">个人中心</span>
			</a></li>

			<li class="active"><a
				href="${pageContext.request.contextPath }/student/showExam"> <span
					class="isw-list"></span><span class="text">我的考试</span>
			</a></li>
		</ul>
		<div class="dr">
			<span></span>
		</div>
	</div>

	<div class="content">
		<div class="breadLine">
			<ul class="breadcrumb">
				<li><a>学生</a> <span class="divider">></span></li>
				<li class="active">个人中心</li>
			</ul>
		</div>



		<div class="workplace">

			<div class="row-fluid">
				<div class="span12">
					<div class="head clearfix">
						<div class="isw-grid"></div>
						<h1>考试记录</h1>
						<ul class="buttons">
							<li><a href="javascript:;" onclick="Download()"
								class="isw-download"></a></li>
						</ul>
					</div>
					<div class="block-fluid">
						<table cellpadding="0" cellspacing="0" width="59%" class="table">
							<thead>
								<tr>
									<th><input type="hidden" name="checkall" /></th>
									<th width="20%">考试名称</th>
									<th width="25%">开始时间</th>
									<th width="25%">结束时间</th>
									<th width="10%">分数</th>
									<th width="10%">考试状态</th>
									<th width="10%">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" name="checkbox" /></td>
									<th width="20%">75期JavaSE测试</th>
									<th width="25%">2016-11-12 09：00</th>
									<th width="25%">2016-11-12 11：00</th>
									<th width="10%"></th>
									<th width="10%">未考试</th>
									<th width="10%"><a
										href="${pageContext.request.contextPath }/studentpaper/exam">进入考试</a></th>
								</tr>

							</tbody>
						</table>
					</div>

				</div>
				<div class="dr">
					<span></span>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function Download() {
				console.log($("tbody input:checked").length);
				var selNumber = $("tbody input:checked").length;

				if (selNumber != 1) {
					var array = [];
					$("tbody input:checked").each(
							function() {
								var webs = $(this).parents("td").siblings(
										"th#address").text();
								console.log(webs);
								array.push(webs);
							});
					console.log(array);
					OpenWeb(array);

				} else {
					var website = $("tbody input:checked").parents("td")
							.siblings("th#address").text();
					console.log(website);
					window.open(website);
				}

			}

			function OpenWeb(array1) {
				var a = 0;
				var time = setInterval(function() {

					if (a == array1.length) {
						clearInterval(time);
					} else {
						window.open(array1[a]);
					}
					a++;

				}, 1000);

			}
		</script>
</body>
</html>
