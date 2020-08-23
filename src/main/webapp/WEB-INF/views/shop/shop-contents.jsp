<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드 - 상품 상세보기</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="../common/menubar.jsp"/>
            <div id="contents1">
                <div class="xans-element- xans-product xans-product-menupackage ">
                    <div class="xans-element- xans-product xans-product-headcategory title ">
                        <h2><span>카테고리종류</span></h2>
                    </div>
                </div>
                <!-- 상단 제품 정보  -->
                <div class="xans-element- xans-product xans-product-detail ">
                    <!-- 이미지 영역 -->
                    <div class="xans-element- xans-product xans-product-image imgArea ">
                        <div class="listImg">
                            <ul>
                                <li>
                                    <!--썸네일 이미지-->
                                    <img src="resources/img/index.jpg" class="ThumbImage" alt="">
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //이미지 영역 -->
                    <!-- 상세정보 내역 -->
                    <div class="infoArea">
                        <div class="sm">
                            <h3>상품이름</h3>
                            <span class="sssm"></span>
                        </div>
                        <div class="smsm">
                            <div class="xans-element- xans-product xans-product-detaildesign">
                                <table border="1" summary="">
                                    <caption> 기본 정보</caption>
                                    <tbody>
                                        <tr class=" xans-record-"></tr>
                                        <tr class=" xans-record-">
                                            <th><span style="font-size:11px;color:#454545;">판매가</span></th>
                                            <td><span style="font-size:11px;color:#454545;"><strong id="span_product_price_text">17,500원</strong>
                                                </span></td>
                                        </tr>
                                        <tr class=" xans-record-">
                                            <th><span style="font-size:12px;color:#555555;">수량</span></th>
                                            <td><input type="number" style="border:1px solid gainsboro"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="zoom_wrap"></div>
                            <div class="xans-element- xans-product xans-product-action ">
                                <a href="#none" onclick="" class="" style="padding:17px 150px 15px 150px">BUY IT NOW</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //상단 제품 정보 -->


                <div class="xans-element- xans-product xans-product-additional ">
                    <!-- 상품상세정보 -->
                    <div id="prdDetail">
                        <div class="cont">
                            <p><img alt="" src="img/index.jpg"></p>
                            <p>&nbsp;</p><img alt="" src="resources/img/index.jpg">
                            <p></p>
                        </div>
                    </div>
                    <!-- //상품상세정보 -->
                </div>
            </div>
        </div>

		<jsp:include page="../common/footer.jsp"/>		
        
        <div id="topbt"><a href="#"><img src="resources/img/top.png" /></a></div>
    <script type="text/javascript">
    	$(document).ready(function() {
       		$('#contents1').appendTo($('#container'));
       		$('html').scrollTop(0);
       	});
	</script>
</body>
</html>