<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>쇼핑랜드</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <div id="wrap">
		<jsp:include page="common/menubar.jsp"/>
		
            <div id="contents1">
                <div class="xans-element- xans-product xans-product-listmain-2 xans-product-listmain xans-product-2">
                    <h2><span>NEW ARRIVAL</span></h2>
                    <ul class="prdList column4">
                        <li class="item xans-record-">
                            <div class="box">
                                <a href="shopContents.do" name="anchorBoxName_11079"><img src="resources/img/index.jpg" class="thumb" /></a>
                                <p class="name">
                                    <a href="#"><span style="font-size:11px;color:#000000;">상품 제목</span></a><br />
                                    <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2">
                                        <li class=" xans-record-">
                                            <strong class="title displaynone"><span style="font-size:11px;color:#555555;">판매가</span>
                                                :</strong> <span style="font-size:11px;color:#555555;">0원</span><span
                                                id="span_product_tax_type_text" style=""> </span></li>
                                        <li class=" xans-record-">
                                            <span style="font-size:11px;color:#a6a6a6;">상품 소개</span></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="item xans-record-">
                            <div class="box">
                                <a href="#" name="anchorBoxName_11079"><img src="resources/img/index.jpg" class="thumb" /></a>
                                <p class="name">
                                    <a href="#"><span style="font-size:11px;color:#000000;">상품 제목</span></a><br />
                                    <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2">
                                        <li class=" xans-record-">
                                            <strong class="title displaynone"><span style="font-size:11px;color:#555555;">판매가</span>
                                                :</strong> <span style="font-size:11px;color:#555555;">0원</span><span
                                                id="span_product_tax_type_text" style=""> </span></li>
                                        <li class=" xans-record-">
                                            <span style="font-size:11px;color:#a6a6a6;">상품 소개</span></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="item xans-record-">
                            <div class="box">
                                <a href="#" name="anchorBoxName_11079"><img src="resources/img/index.jpg" class="thumb" /></a>
                                <p class="name">
                                    <a href="#"><span style="font-size:11px;color:#000000;">상품 제목</span></a><br />
                                    <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2">
                                        <li class=" xans-record-">
                                            <strong class="title displaynone"><span style="font-size:11px;color:#555555;">판매가</span>
                                                :</strong> <span style="font-size:11px;color:#555555;">0원</span><span
                                                id="span_product_tax_type_text" style=""> </span></li>
                                        <li class=" xans-record-">
                                            <span style="font-size:11px;color:#a6a6a6;">상품 소개</span></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="item xans-record-">
                            <div class="box">
                                <a href="#" name="anchorBoxName_11079"><img src="resources/img/index.jpg" class="thumb" /></a>
                                <p class="name">
                                    <a href="#"><span style="font-size:11px;color:#000000;">상품 제목</span></a><br />
                                    <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2">
                                        <li class=" xans-record-">
                                            <strong class="title displaynone"><span style="font-size:11px;color:#555555;">판매가</span>
                                                :</strong> <span style="font-size:11px;color:#555555;">0원</span><span
                                                id="span_product_tax_type_text" style=""> </span></li>
                                        <li class=" xans-record-">
                                            <span style="font-size:11px;color:#a6a6a6;">상품 소개</span></li>
                                    </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

		<jsp:include page="common/footer.jsp"/>		
        
        <div id="topbt">
        	<a href="#"><img src="resources/img/top.png" /></a>
        </div>

    
    <script type="text/javascript">
    	$(document).ready(function() {
       		$('#contents1').appendTo($('#container'));
       		$('html').scrollTop(0);
       	});
	</script>
</body>
</html>