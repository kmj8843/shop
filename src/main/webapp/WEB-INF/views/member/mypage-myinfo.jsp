<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 내 정보 수정</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
           <div id="contents2">
                <form id="joinForm" name="joinForm" action="" method="post" enctype="multipart/form-data">
                    <div class="xans-element- xans-member xans-member-join">
                        <h3>기본정보</h3>
                        <p class="required">수정할 정보를 입력해주세요</p>
                        <div class="boardWrite ">
                            <table border="1" summary="">
                                <caption>회원 기본정보</caption>
                                <tbody>
                                    <tr>
                                        <th scope="row">아이디</th>
                                        <td><input id="member_id" name="member_id" class="inputTypeText" type="text" 
                                            value="아이디값받아오기" readonly>
                                            </td>
                                    </tr>
                                    <tr class="">
                                        <th scope="row">별명</th>
                                        <td><input id="nick_name" name="nick_name" class="inputTypeText" maxlength="20"
                                                value="" type="text">
                                            (한글2~10자/영문 대소문자4~20자/숫자 혼용가능) <p id="nickMsg"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">비밀번호</th>
                                        <td><input id="passwd" name="passwd" maxlength="16" 0="disabled" value="" type="password">
                                            (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" id="nameTitle">이름</th>
                                        <td>
                                            <span id="nameContents">
                                                <input type="text" name="name" id="name" maxlength="20" value="이름값받아오기"></span>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <th scope="row">성별</th>
                                        <td><input id="is_sex0" name="is_sex" value="M" type="radio" ><label for="is_sex0">남자</label>
                                            <input id="is_sex1" name="is_sex" value="F" type="radio" checked="checked"><label for="is_sex1">여자</label></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">주소</th>
                                        <td>
                                            <input id="postcode1" name="postcode1" class="inputTypeText" placeholder=""
                                                readonly="readonly" maxlength="14" value="우편번호값 받아오기" type="text">
                                            <a href="#none" title="우편번호(새창으로 열기)" onclick="" id="postBtn">
                                                <img src="http://img.echosting.cafe24.com/design/skin/default/member/btn_zip.gif"
                                                    alt="우편번호"></button><br>
                                                <input id="addr1" name="addr1" class="inputTypeText" placeholder=""
                                                    readonly="readonly" value="주소값 받아오기" type="text" ><br>
                                                <input id="addr2" name="addr2" class="inputTypeText" placeholder=""
                                                    value="주소값2 받아오기" type="text"> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">휴대전화</th>
                                        <td><select id="mobile1" name="mobile[]">
                                                <option value="010">010</option>
                                                <option value="011">011</option>
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                            </select>
                                            -<input id="mobile2" name="mobile[]" maxlength="4" value="받아오기" type="text">-
                                            <input id="mobile3" name="mobile[]" maxlength="4" value="받아오기" type="text">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">이메일</th>
                                        <td><input id="email1" name="email1" fw-alone="N" fw-msg="" value="받아오기" type="text"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="btnArea">
                            <button>회원정보수정</button>
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