<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../login/login_check_module.jsp"/>
<!DOCTYPE html>
<html>   
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>CarPick</title>

    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/product.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/reset.css">
    <link href="../css/carousel.css" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
            .ps-md-3 {
            	margin-top: 40px !important;
			}
        }
        
        
        .navbar {
		    --bs-bg-opacity: 1;
		    background-color: rgba(var(--bs-dark-rgb),var(--bs-bg-opacity))!important;
		}
		.d-flex {
		    display: flex!important;
		    margin-bottom: 0;
		}
		.bg-dark2 {
		    --bs-bg-opacity: 1;
		    background-color: rgba(var(--bs-dark-rgb),var(--bs-bg-opacity))!important;
		}
    </style>

</head>
<script>
function btn1(){
	const fTBtn1 = document.frm1;
	fTBtn1.setAttribute("action", "../carPick/carType.jsp");
	fTBtn1.setAttribute("method", "get");
	fTBtn1.submit();
}
function btn2(){
	const fTBtn2 = document.frm2;
	fTBtn2.setAttribute("action", "../carPick/scroll.jsp");
	fTBtn2.setAttribute("method", "get");
	fTBtn2.submit();
}
</script>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark2">
    <div class="container-fluid" style="display: flex; justify-content: center;"">
       <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
        	<div style="display: flex; justify-content: center; align-items: center;">
        	<a style="text-align:center" class="navbar-brand" href="/CarPick"><img src="../img/??????.png"/ width="33%"></a>
        	</div>
        </li>
          &nbsp;
          <li class="nav-item">
             <c:choose>
         <c:when test="${empty loginOkUser}">
         	&nbsp;
            <a class="py-2" href="../login/login.do?m=form">?????????</a>
            &nbsp;&nbsp;
            <a class="py-2 d-none d-md-inline-block" href="../login/login.do?m=signup">????????????</a>
         </c:when>
         <c:otherwise>
            <div>
            <font id="fontline" class="py-2 nav-link active" style="color:green; texg-align:center">${loginOkUser.email} ??? ???????????????</font>
            </div>
         </li>
         <li class="nav-item"><a class="py-2 nav-link active" href="../login/login.do?m=logout">????????????</a>
            </c:otherwise>
            </c:choose>
           </li>
          <li class="nav-item">
           <a class="nav-link" href="../board/board.do?m=list">???????????? ????????? ????????????</a>
         </li>
        </ul>
        	<form class="d-flex" action="select.do?m=search" method="post">
               <input class="form-control me-2" name="searchR" type="text"
                  placeholder="???????????????" aria-label="Search">
               <button class="btn btn-outline-success" type="submit">Search</button>
    		 </form>
      </div>
    </div>
  </nav>
</header>
<form name="frm1">
<div>
    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3" style="width: 450px; height: 750px ">
        <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5">??????</h2>
                <p class="lead">???????????? ?????? ??????????????? ?????? ????????? ???????????????!</p>
                <button class="btn btn-outline-secondary" type="button" onclick="btn1()">??????</button>
            </div>
            <div class="bg-light shadow-sm mx-auto domestic" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"><img src="../img/cartype.png" class="top-padding" alt="?????????" width="450px" height="240px"/></div>
        </div>
        </form>

      <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden" style="width: 450px; height: 750px">
          <form name="frm2">
          <div class="my-3 p-3">
              <h2 class="display-5">??????</h2>
              <p class="lead">???????????? ?????? ??????????????? ?????? ????????? ???????????????!</p>
              <button type="submit" onclick="btn2()" type="button" class="btn btn-outline-secondary">??????</button>
          </div>
          <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;" class="foriegn"><img src="../img/whitemoney.png" class="top-padding" alt="?????????" width="450px" height="240px"/></div>
      </div>
      </form>
    </div>
</div>
</form>
<div class="footer">
    <h1> CARPICK </h1>
    <p>
       ?????? : ????????? ????????? ????????? 426-5 ?????????????????? 2??? <br> ( ???????????? CARPICK ) <br>
       ????????? ???????????? : 123-45-67890 <br> E-mail : CarPick@naver.com
    </p>
</div>
</body>
</html>