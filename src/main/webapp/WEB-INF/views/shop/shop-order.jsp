<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 주문하기</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
           <div id="contents2">
                <form id="frm_order_act" name="frm_order_act" action="" method="post" enctype="multipart/form-data">
                    <div class="xans-element- xans-order xans-order-form xans-record-">
                        <div class="orderList">
                            <table border="1" summary="" class="boardOrder ">
                                <caption>기본 배송 주문서</caption>
                                <thead>
                                    <tr>
                                        <th scope="col">이미지</th>
                                        <th scope="col">상품명</th>
                                        <th scope="col">판매가</th>
                                        <th scope="col">수량</th>
                                        <th scope="col">가격</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="9">상품구매금액 <strong> : 25,800원</strong>
                                        </td>
                                    </tr>
                                </tfoot>
                                <tbody class="xans-element- xans-order xans-order-normallist">
                                    <tr class="xans-record-">

                                        <td class="thumb"><img src="resources/img/index.jpg"></td>
                                        <td class="prduct">
                                            <a href="#">상품명</a>
                                        </td>
                                        <td class="sell">12,900원</td>
                                        <td class="total">2</td>
                                        <td class="total">25,800원</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="totalOrder">
                            <h4>
                                <strong>합계</strong>
                                <span>고객님의 총 주문 합계 금액 입니다.</span>
                            </h4>
                            <ul>

                                <li class="total">
                                    <strong>결제예정금액</strong><span><em id="f_total_price_id">25,800</em>원</span>
                                </li>
                            </ul>
                            <p class="displaynone">총 주문합계 금액은 해외배송비가 미포함된 금액입니다.</p>
                        </div>

                        <!-- 배송지 정보 -->
                        <div class="orderArea ">
                            <h3>배송지 정보</h3>
                            <div class="boardWrite">
                                <table border="1" summary="">
                                    <caption>배송지 정보 입력</caption>
                                    <tbody>
                                        <tr>
                                            <th scope="row">성명</th>
                                            <td><input id="rname" name="rname" class="inputTypeText" placeholder=""
                                                    size="15" value="" type="text"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">주소</th>
                                            <td>
                                                <input id="rzipcode1" name="rzipcode1" class="inputTypeText"
                                                    placeholder="" size="6" maxlength="6" readonly="1" value="" type="text">
                                                <img src="http://img.echosting.cafe24.com/design/skin/default/member/btn_zip.gif"
                                                    alt="우편번호" id="btn_search_rzipcode"><br>
                                                <input id="raddr1" name="raddr1" class="inputTypeText" placeholder=""
                                                    size="40" readonly="1" value="" type="text"> 기본주소<br>
                                                <input id="raddr2" name="raddr2" class="inputTypeText" placeholder=""
                                                    size="40" value="" type="text"> 나머지주소
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">휴대전화</th>
                                            <td><select id="rphone2_1" name="rphone2_[]">
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                </select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"
                                                    fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N"
                                                    fw-msg="" size="4" value="" type="text">-<input id="rphone2_3" name="rphone2_[]"
                                                    maxlength="4" size="4" value="" type="text"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- //배송지 정보 -->

                        <!-- 결제정보 -->
                        <div class="orderArea">
                            <h3>결제정보</h3>
                            <div class="boardWrite">
                                <table border="1" summary="">
                                    <!-- 제품 결제 금액 안내 -->
                                    <tbody>
                                        <tr>
                                            <th scope="row">결제금액</th>
                                            <td class="total"><input id="total_price" name="total_price" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;"
                                                    size="10" readonly="1" value="25800" type="text">원</td>
                                        </tr>
                                    </tbody>
                                    <!-- 결제방식 선택 -->
                                    <tbody>
                                        <tr>
                                            <th scope="row">결제방식 선택</th>
                                            <td>
                                                <span class="ec-base-label">
                                                    <input id="addr_paymethod1" name="addr_paymethod" value="card" type="radio">
                                                    <label for="addr_paymethod1">카드 결제</label>
                                                </span>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div><br>
                    <button>주문하기</button>
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