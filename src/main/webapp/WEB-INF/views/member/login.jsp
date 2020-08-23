<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 로그인</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
            <div id="contents2">
                <form action="" method="post" target="_self" enctype="multipart/form-data" >
                    <div class="xans-element- xans-member xans-member-login ">
                        <div class="login" style="height:200px;">
                            <fieldset>
                                <legend>회원로그인</legend>
                                <p class="title"><span>MEMBER LOGIN</span></p>
                                <p class="check"> 
                                    <span>ID</span>
                                    <input id="member_id" name="member_id" class="inputTypeText" placeholder="" value="" type="text"/>				
                                    <span>PASSWORD</span>
                                    <input id="member_passwd" name="member_passwd"type="password"/>
                                </p>
                                <p class="btbt">
                                    <a href="#">LOGIN</a>
                                </p>  
                                <p class="btbt1">
                                <a href="#">JOIN US</a></p> 
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
		<jsp:include page="../common/footer.jsp"/>		
        
        <div id="topbt"><a href="#"><img src="resources/img/top.png" /></a></div>
    <script type="text/javascript">
    	$(document).ready(function() {
       		$('#contents2').appendTo($('#container'));
       		$('html').scrollTop(0);
       	});
	</script>
</body>
</html>