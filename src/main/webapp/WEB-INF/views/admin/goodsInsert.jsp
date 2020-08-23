<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <link href="resources/css/admin-styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
     .outer {
           margin: auto;
           margin-top: 50px;
     }
     
     .tt {
        width: 100%;
        border: 1px solid rgba(0, 128, 0, 0.507);
     }
     
     #inner{
     	width:100%;
        margin-bottom:3%;
     }
</style>
<script src="resources/smartEditor/SE2/js/HuskyEZCreator.js"></script>

<script>
	// 썸네일 추가 클릭했을 때
	$(function(){
	    $("#represent").click(function(e){
	       $("#represent-btn").click();
	    });   
	 });
	//썸네일 미리보기
    function loadImg(value,n){
        if(value.files && value.files[0]){
           var reader = new FileReader();
           reader.onload = function(e){
              switch(n){
              case 1:
                 $("#represent1").attr("src",e.target.result);//src에다가 읽어온 값 넣는다
                 $("#represent1").css({width:"100%",height:"100%",margin:"0"});
                 break;
              }
           }   
           //파일 읽기 하는 메소드
           reader.readAsDataURL(value.files[0]);
        }
    }

    // 스마트에디터 설정
    	var oEditors = []; // 
	
	$(document).ready(function() {
		// Editor Setting
		
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors, // 전역변수 명과 동일해야 함.
			elPlaceHolder : "smarteditor", // 에디터가 그려질 textarea ID 값과 동일 해야 함.
			sSkinURI : "resources/smartEditor/SE2/SmartEditor2Skin.html", // Editor HTML
			fCreator : "createSEditor2", // SE2BasicCreator.js 메소드명이니 변경 금지 X
			htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true, 
			}
		});

		// 전송버튼 클릭이벤트
		$("#savebutton").click(function(){
			//if(confirm("저장하시겠습니까?")) {
				// id가 smarteditor인 textarea에 에디터에서 대입
				oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
	
				// 이부분에 에디터 validation 검증
				if(validation()) {
					$("#frm").submit();
				}
			//}
		})
		
	
	});
	
	// 필수값 Check
	function validation(){
		var contents = $.trim(oEditors[0].getContents());
		if(contents === '<p>&nbsp;</p>' || contents === ''){ // 기본적으로 아무것도 입력하지 않아도 <p>&nbsp;</p> 값이 입력되어 있음. 
			alert("내용을 입력하세요.");
			oEditors.getById['smarteditor'].exec('FOCUS');
			return false;
		}
		return true;
	}
</script>
</head>

<body>
   <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">쇼핑랜드 관리자 페이지</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Menu</div>
                            <a class="nav-link" href="adminMemberView.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                회원 목록
                            </a>
                            <a class="nav-link" href="adminGoodsList.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                상품 목록
                            </a>
                            <a class="nav-link" href="goodsInsertView.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                상품 등록
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
    <section class="page-section" id="portfolio">
        <div class="container">
           <div class="row">
              <div class="outer">
                 <br>
                 <h2 align="center">상품 입력</h2>
                 <hr>
                 <div class="tableArea">
            <form action="goodsInsert.do" enctype="multipart/form-data" id="frm" method="post">
                       <fieldset>
                          <table>
                             <tr>
                                <td colspan="6"><h5><strong>대표 이미지</strong></h5></td>
                             </tr>
                             <tr>
                                <td colspan="6">
	            <div id="represent" class="represent-img">
					<img id="represent1" class="images" src="resources/img/index.jpg" width="400px" height="300px">
				</div>                
				<input type="file" name="represent" style="display:none;"class="hidden" id="represent-btn" onchange="loadImg(this,1)">    
                                </td>
                             </tr>
  
                             <tr>
                                
                                <td colspan="6"><h5><strong>옵션</strong></h5></td>
                             </tr>
                             <tr>
                                <td>가격</td>
                                <td><input type="number" name="gPrice" size="58" name="gPrice" min="0"
                                   class="tt"></td>
                                <td>재고</td>
                                <td><input type="text" name="gStock" size="58" min="0"
                                   class="tt"></td>
                             </tr>
  
                             <tr>
                                <td colspan="6"><h5><strong>상품이름</strong></h5></td>
                             </tr>
                             <tr>
                                <td colspan="6"><input type="text" size="58" name="gName"
                                   class="tt"></td>
                             </tr>

                                                          
                             <tr>
                                 <td colspan="6"><h5><strong>카테고리</strong></h5></td>
                             </tr>
                             <tr>
                             	<td colspan="6"><input type="text" size="58" class="tt" name="gCategory" ></td>
                             </tr>
                             
                             <tr>
                                <td colspan="6"><h5><strong>내용@</strong></h5></td>
                             </tr>
                             <tr>
                                <td colspan="6">
                                <textarea name="gContents" id="smarteditor" rows="10" cols="100" style="width:280px; height:412px;  "></textarea> 
                                </td>
                             </tr>
                          </table>
                          <br>
                          <div align="center">
                             <button id="savebutton" class="btn btn-outline-success">등록하기</button>
                          </div>
                       </fieldset>
                    </form>
                 </div>
              </div>
           </div>
        </div>
     </section> 	
                    </div>
                </main>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/js/admin-scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="resources/assets/demo/datatables-demo.js"></script>
</body>
</html>