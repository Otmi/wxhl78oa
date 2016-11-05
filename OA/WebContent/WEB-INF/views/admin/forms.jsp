<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>        
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
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
            <div class="adminControl active">
                Hi, 尊敬的管理员
            </div>
        </div>
        <!-- 管理员 -->
        <div class="admin">
            <div class="image">
                <img src="${pageContext.request.contextPath }/sources/img/users/aqvatarius.jpg" class="img-polaroid"/>                
            </div>
            <ul class="control">                
                <li><span class="icon-share-alt"></span> <a href="login.html">退出</a></li>
            </ul>
        </div>
        
        <ul class="navigation"> 
            <!-- 项目总结报告 -->
            <li class="active">
                <a href="test">
                    <span class="isw-grid"></span><span class="text">班级管理</span>
                </a>
            </li>

            <!-- 项目情况进展表 -->
            <li>
                <a href="ui">
                    <span class="isw-list"></span><span class="text">班主任管理</span>
                </a>               
            </li>          
            <li>
                <a href="forms">
                    <span class="isw-archive"></span><span class="text">学生管理</span>                 
                </a>
            </li>                        
            <li>
                <a href="messages">
                    <span class="isw-chat"></span><span class="text">讲师管理</span>
                </a>
            </li>                                    
            <li>
                <a href="statistic">
                    <span class="isw-graph"></span><span class="text">试题管理</span>
                </a>
            </li>   
            <li>
                <a href="tables">
                    <span class="isw-text_document"></span><span class="text">试卷管理</span>
                </a>                
            </li>   
            <li>
                <a href="user">
                    <span class="isw-documents"></span><span class="text">考试管理</span>
                </a>
            </li>            
        </ul>
        <div class="dr"><span></span></div>   
    </div>
        
    <div class="content">
        <div class="breadLine">
            <ul class="breadcrumb">
                <li><a>管理员</a> <span class="divider">></span></li>                
                <li class="active">项目总结报告</li>
            </ul>   
        </div>

        
        <script type="text/javascript">
            function Download() {
                console.log($("tbody input:checked").length);
                var selNumber= $("tbody input:checked").length;

                if (selNumber!=1) {
                    var array = [];
                        $("tbody input:checked").each(function(){
                            var webs = $(this).parents("td").siblings("th#address").text();
                            console.log(webs);
                            array.push(webs);
                        });
                    console.log(array);
                    OpenWeb(array);

                }else{
                    var website = $("tbody input:checked").parents("td").siblings("th#address").text();
                    console.log(website);
                    window.open(website);
                }
                
            }

            function OpenWeb (array1){
                var a = 0;
                var time = setInterval(function () {
                    
                    if (a ==array1.length) {
                        clearInterval(time);
                    }else{
                        window.open(array1[a]);
                    }
                    a++;

                },1000);


            }
        </script>
        <div class="workplace">
                    
        <div class="row-fluid">
            <div class="span12">                    
                <div class="head clearfix">
                   <!--  <div class="isw-grid"></div> -->
                    <form action="">
						<input type="text" placeholder="班级">
						<input type="text" placeholder="姓名">
						<input type="text" placeholder="毕业院校">
						<input type="text" placeholder="出生年月">
						<input type="text" placeholder="状态">
						
						<input type="submit" value="搜索">
						<input type="submit" value="添加">
						
					</form>     
                    <ul class="buttons">
                        <li><a href="javascript:;" onclick="Download()" class="isw-download"></a></li>  


                        <!-- <li><a href="#" class="isw-attachment"></a></li>
                        <li>
                            <a href="#" class="isw-settings"></a>
                            <ul class="dd-list">
                                <li><a href="#"><span class="isw-plus"></span> 文件上传</a></li>
                                <li><a href="#"><span class="isw-edit"></span> 编辑</a></li>
                                <li><a href="#"><span class="isw-delete"></span> 删除</a></li>
                            </ul>
                        </li> -->
                    </ul>                        
                </div>
                <div class="block-fluid">
                    <table cellpadding="0" cellspacing="0" width="100%" class="table">
                        <thead>
                            <tr>
                                 <th ><input type="hidden" name="checkall"/></th>
                                <th width="12%">姓名</th>
                                <th width="12%">毕业院校</th>
                                <th width="12%" >出生年月</th>
                                <th width="12%">手机</th>  
								 <th width="12%">进班时间</th>
								 <th width="12%">状态</th>  
								
								 <th width="12%">操作</th>                                     
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <td>
                            	<c:forEach var="i" begin="1" end="5">
  					 				<td>Item <c:out value="${i}"/></td>
								</c:forEach>
								
                               <!--  <td><input type="checkbox" name="checkbox"/></td>
                               
                                 
                                <td width="12%">班级名称</td>
                                <td width="12%">班级类型</td>
                                <td width="12%" ">班级任</td>
                                <td width="12%">讲师</th>  
								 <td width="12%">开班时间</td>
								 <td width="12%">学习时长</td>  
								 <td width="12%">状态</td>
								 <td width="12%">
								 	<form action="">
									<select name="cars">
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="fiat">Fiat</option>
									<option value="audi">Audi</option>
									</select>
									</form>
								 </td>       -->                                
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="dr"><span></span></div>

               <!--  <form action="UploadServlet" method="post" enctype="multipart/form-data">
                    <h3 style="display: inline-block;">文件上传:</h3> 
                    <input type="text" size="20" name="upfile" id="upfile" style="border:1px dotted #ccc">  
                    <input type="button" value="浏览" onclick="path.click();" style="border:1px solid #ccc;background:#fff ;padding:5px; margin: -10px 0px 0px 0px;">  
                    <input type="file" id="path" style="display:none" onchange="upfile.value=this.value">
                    <input type="submit" id="submit" value="开始上传" style="border:1px solid #ccc;background:#fff ;padding:5px; margin: -10px 0px 0px 0px;" />
                </form> -->
                
            </div>                                
        </div>
        <div class="dr"><span></span></div>
        </div>
    </div>
</body>
</html>
