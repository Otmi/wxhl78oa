<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>        
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <!--[if gt IE 8]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <![endif]-->
    
    <title>登录</title>

    <jsp:include page="/WEB-INF/commons/css.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/commons/js.jsp"></jsp:include>
    
</head>
<body>
    
    <div class="loginBox">        
        <div class="loginHead">
        </div>
        <form class="form-horizontal" action="index.html" method="POST">            
            <div class="control-group">
                <label for="inputEmail">账号</label>                
                <input type="text" id="inputEmail"/>
            </div>
            <div class="control-group">
                <label for="inputPassword">密码</label>                
                <input type="password" id="inputPassword"/>                
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-block">登录</button>
            </div>
        </form>        
        
    </div>    
    
</body>
</html>
