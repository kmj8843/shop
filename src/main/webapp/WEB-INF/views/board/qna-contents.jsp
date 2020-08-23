<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - QNA 열람</title>
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
                                <font color="#000000">Q N A</font>
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
                                    </tbody>
                                </table>
                            </div>

                            <div class="btnArea">
                                <span class="left"><a href="#"><img src="http://img.echosting.cafe24.com/design/skin/default/board/btn_list.gif"
                                            alt="목록"></a></span>
                                <button>수정</button>
                                <button>삭제</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- // 글 내용 끝 -->

                <!--코멘트-->
                <div class="xans-element- xans-board xans-board-commentpackage-4 xans-board-commentpackage xans-board-4 ">
                    <div class="xans-element- xans-board xans-board-commentlist-4 xans-board-commentlist xans-board-4">
                        <ul class="boardComment">
                            <li class="first xans-record-">
                                <strong class="name">관리자</strong>
                                <span class="date">2019-12-09</span>
                                <p class="comment">
                                    <span id="comment_contents">코멘트 입력</span>
                                </p>
                            </li>
                        </ul>
                    </div>

                    <!--코멘트 작성 폼 (관리자만 보임) -->
                    <form id="commentWriteForm" name="" action="" method="post" target="_self" enctype="multipart/form-data">
                        <input id="board_no" name="board_no" value="" type="hidden">
                        <input id="no" name="no" value="" type="hidden">
                        <input id="comment_no" name="comment_no" value="" type="hidden">
                        <input id="member_id" name="member_id" value="" type="hidden">
                        <div class="xans-element- xans-board xans-board-commentwrite-4 xans-board-commentwrite xans-board-4 ">
                            <div class="">
                                <fieldset>
                                    <legend>댓글 입력</legend>
                                    <p><strong>답변 달기</strong>
                                        <textarea id="comment" name="comment"></textarea>
                                        <a href="#none" class=""><img src="http://img.echosting.cafe24.com/design/skin/default/board/btn_comment_submit.gif"
                                                alt="확인"></a>
                                    </p>
                                </fieldset>
                            </div>
                        </div>
                    </form>
                    <!--//코멘트 작성 폼 끝-->
                </div>
                <!-- // 코멘트 끝-->
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