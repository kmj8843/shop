<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 주문목록 조회</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
           <div id="contents2">
                <div class="orderHistory">
                    <div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem">
                        <div class="titleArea">
                            <h1>주문 내역</h1>
                        </div>
                        <table border="1" summary="">
                            <thead>
                                <tr>
                                    <th scope="col" class="number">주문일자</th>
                                    <th scope="col" class="product">상품정보</th>
                                    <th scope="col" class="quantity">수량</th>
                                    <th scope="col" class="price">상품구매금액</th>
                                    <th scope="col" class="state">주문처리상태</th>
                                </tr>
                            </thead>
                            <tbody class="">
                                <tr class="xans-record-">
                                    <td rowspan="1" class="number ">
                                        2019-12-01
                                        <a href="#none" class="displaynone"><img src="IMG/index.jpg" alt="주문취소"></a>
                                    </td>
                                    <td class="product">
                                        <span class="thumb"><a href="#">
                                                <img src="IMG/index.jpg" alt=""></a></span>
                                        <p><a href="#"">상품명</a></p>
                                    </td>
                                    <td>1</td>
                                    <td>
                                        <strong>13,500원</strong>
                                    </td>
                                    <td class="
                                                state">
                                                <p>배송완료</p>
                                    </td>
                                </tr>

                                <tr class="xans-record-">
                                    <td rowspan="1" class="number ">
                                        2019-12-01 <p>
                                            <a href="#none" class="displaynone"><img src="IMG/index.jpg" alt="주문취소"></a>
                                    </td>
                                    <td class="product">
                                        <span class="thumb"><a href="#">
                                                <img src="IMG/index.jpg" alt=""></a></span>
                                        <p><a href="#"">상품명</a></p>
                                        </td>
                                        <td>1</td>
                                        <td>
                                            <strong>13,500원</strong>
                                        </td>
                                        <td class="
                                                state">
                                                <p>배송완료</p>
                                    </td>
                                </tr>

                            </tbody>
                            <tbody class="displaynone">
                                <tr>
                                    <td colspan="6" class="empty">주문 내역이 없습니다</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!--페이징바-->
                    <div class="xans-element- xans-myshop xans-myshop-orderhistorypaging">
                        <a href="#"><img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_prev.gif"
                                alt="이전 페이지"></a></p>
                        <ol>
                            <li class="xans-record-"><a href="#" class="this">1</a></li>
                        </ol>
                        <p>
                            <a href="#">
                                <img src="http://img.echosting.cafe24.com/design/skin/default/common/btn_page_next.gif"
                                    alt="다음 페이지"></a></p>
                    </div>
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