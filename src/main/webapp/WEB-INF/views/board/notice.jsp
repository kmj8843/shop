<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 공지사항</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
            <div id="contents2">
                <div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
                    <div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
                        <div class="title">
                            <h2>
                                <font color="#000000">NOTICE</font>
                            </h2>
                        </div>
                    </div>

                    <!-- 리스트 -->
                    <div class="boardList crema-hide">
                        <table border="1" summary="">
                            <caption>게시판 목록</caption>

                            <thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
                                <tr style=" ">
                                    <th scope="col" class="number"> NO.</th>
                                    <th scope="col" class="subject">SUBJECT</th>
                                    <th scope="col" class="writer">NAME</th>
                                    <th scope="col" class="date">DATE</th>
                                    <th scope="col" class="hit ">HIT</th>
                                </tr>
                            </thead>
                            <tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002">
                                <tr class="xans-record-">
                                    <td class="number"> 1</td>
                                    <td class="subject"> <a href="#" style="color:#000000;">게시글 제목</a> </td>
                                    <td class="writer">쇼핑랜드</td>
                                    <td class="date">2019-11-24</td>
                                    <td class="hit">5670</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 ">
                        <button>글쓰기</button>
                    </div>
                </div>
                <!-- /리스트 -->

                <!-- 페이징바 -->
                <div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 crema-hide">
                    <p><a href="" style="display:none">
                            <img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_first.gif"
                                alt="첫 페이지"></a></p>
                    <p><a href="?board_no=1&amp;page=1">
                            <img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_prev.gif" alt="이전 페이지"></a></p>
                    <ol>
                        <li class="xans-record-"><a href="#" class="this">1</a></li>
                    </ol>
                    <p><a href="#">
                            <img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_next.gif" alt="다음 페이지"></a></p>
                    <p><a href="" style="display:none">
                            <img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_last.gif" alt="마지막 페이지"></a></p>
                </div>
                <!-- //페이징바 -->

                <!-- 관리자 전용 메뉴 -->

                <!-- //관리자 전용 메뉴 -->
                <form id="boardSearchForm" name="" action="/board/free/list.html" method="get" target="_top" enctype="multipart/form-data">
                    <input id="board_no" name="board_no" value="1" type="hidden">
                    <input id="page" name="page" value="1" type="hidden">
                    <input id="board_sort" name="board_sort" value="" type="hidden">
                    <div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 crema-hide ">
                        <fieldset class="boardSearch">
                            <legend>게시물 검색</legend>
                            <p>
                                <select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
                                    <option value="subject">제목</option>
                                    <option value="content">내용</option>
                                    <option value="writer_name">글쓴이</option>
                                    <option value="member_id">아이디</option>
                                    <option value="nick_name">별명</option>
                                </select> <input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText"
                                    placeholder="" value="" type="text"> <a href="#none" onclick="BOARD.form_submit('boardSearchForm');"><img
                                        src="http://img.echosting.cafe24.com/design/skin/default/board/btn_find.gif"
                                        alt="찾기"></a></p>
                        </fieldset>
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