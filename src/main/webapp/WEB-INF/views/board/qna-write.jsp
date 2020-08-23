<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - Q N A 작성</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
            <div id="contents2">
                <!--글 내용-->
                <div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
                    <div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">Q N A 작성</font>
                            </h2>
                        </div>
                    </div>
                    <form id="BoardDelForm" name="" action="" method="post" enctype="multipart/form-data">
                        <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 ">
                            <div class="boardView">
                                <table border="1" summary="">
                                    <caption>게시판 상세</caption>
                                    <tbody>
                                        <tr>
                                            <th scope="row">제목</th>
                                            <td><input type="text" style="width:500px;" name="title"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">작성자</th>
                                            <td> 작성자닉네임갖고오기<input type="hidden" name="writer" value="작성자닉네임"></td>
                                        </tr>
                                        <tr class="view">
                                            <td colspan="2">
                                                <div class="detail">
                                                    <textarea name="content" style="width: 900px; height:500px;"></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="btnArea">
                                <span class="left"><a href="#"><img src="http://img.echosting.cafe24.com/design/skin/default/board/btn_list.gif"
                                            alt="목록"></a></span>
                                <button>등록</button>
                                <button>취소</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- // 글 내용 끝 -->
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