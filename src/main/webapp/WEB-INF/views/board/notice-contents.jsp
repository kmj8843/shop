<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 공지사항 읽기</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
            <div id="contents2">
                <div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
                    <div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">NOTICE</font>
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
                                            <td>2019 수능이벤트</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">작성자</th>
                                            <td> 쇼핑랜드 <span class="displaynone">(ip:)</span> </td>
                                        </tr>
                                        <tr class="etcArea">
                                            <td colspan="2">
                                                <ul>
                                                    <li class="date">
                                                        <strong class="th">작성일</strong> <span class="td">2019-11-24</span>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr class="view">
                                            <td colspan="2">
                                                <div class="detail">
                                                    <p>글 내용</p><br><br><br><br>
                                                    글 내용
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="attach">
                                            <th>첨부파일</th>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="btnArea">
                                <span class="left"><a href="#"><img
                                            src="http://img.echosting.cafe24.com/design/skin/default/board/btn_list.gif"
                                            alt="목록"></a></span>
                                <button>수정</button>
                                <button>삭제</button>
                            </div>
                        </div>
                    </form>
                </div>
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