<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="vo.*" %>
<%
request.setCharacterEncoding("utf-8");

MemberInfo memberInfo = (MemberInfo)session.getAttribute("memberInfo");
boolean isLogin = false;
if (memberInfo != null)   isLogin = true;
%>
<!DOCTYPE html>
<html>
<head>
   <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
    <!-- Bootstrap core CSS -->
    <% String incSrc = request.getContextPath() + ""; %>
   <link href="<%=incSrc %>/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
   
      <link rel="stylesheet" type="text/css" href="<%=incSrc %>/css/base.css" />
      <link href="<%=incSrc %>/css/form-validation.css" rel="stylesheet">
    <link href="<%=incSrc %>/css/signin.css" rel="stylesheet">
    <link href="<%=incSrc %>/css/blog.css" rel="stylesheet">
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
      }
      
      .emptyUl {
         margin-left:30px;
      }
      
      .ulLi {
         margin-left:30px;
      }
      
      .dep2 {
         width:3000px; height:50px;
         background-color:white;
         margin-left:-1350px;
         padding-left:-500px;
         z-index:100;
         border-bottom:1px solid #efefef;
         border-top:1px solid #efefef;
         padding:3px 0 3px 0;
      }
      
    </style>
    <script src="<%=incSrc %>/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
    <script src="<%=incSrc %>/js/jquery-3.6.0.js"></script>
    <script>
   $(document).ready(function() {
      $(".page-header").each(function() {
         var $window = $(window);   // 브라우저 창을 jQuery객체로 저장
         var $header = $(this);      // page-header를 jQuery객체로 저장(고정시켜야 할 객체)
         var headerOffsetTop = $header.offset().top;
         // $header의 상단 지점의 위치(이 값에 따라 고정시킬지 여부가 결정됨)

         $window.on("scroll", function() {
         // 브라우저($window)에서 스크롤 이벤트가 발생했을 때 동작됨
            if ($window.scrollTop() > headerOffsetTop) {
            // 브라우저의 스크롤바 상단 위치($window.scrollTop())가 메뉴바 상단위치(headerOffsetTop)보다 크면
            // 메뉴바가 가려질 정도로 스크롤바가 내려왔을 경우
               $header.addClass("sticky");
               // $header에 'sticky'라는 클래스를 추가(sticky : css에서 상단에 고정시키는 스타일을 적용한 클래스)
            } else {
               $header.removeClass("sticky");
               // $header에 'sticky'라는 클래스를 제거(sticky : css에서 상단에 고정시키는 스타일을 적용한 클래스)
            }
         });

         $window.trigger("scroll");
         // trigger() : 선택한 객체에 지정한 이벤트를 인위적으로 발생시키는 메소드
         // 파일 로딩 후 헤더의 초기 위치를 조정하기 위해 실행됨
      });
   });
   

   var cmenu = ""; // 현재 보이는 서브메뉴 번호를 저장할 변수
   function subMenu(img, num){
   // img : 현재 마우스가 오버된 메인메뉴의 이미지 객체(img 태그)
   // num : 현재 마우스가 오버된 메인메뉴의 서브메뉴 id값에 해당하는 번호(1~6)
      img.src ="images/topmenu0" + num + "_ov.gif";
      // 메인 메뉴에 마우스 오버시 보여줄 이미지 변경

      if (cmenu !="") {   // 현재 보이는 서브메뉴가 있으면
         var obj = document.getElementById ("naviSub0" + cmenu);
         // 현재 보이는 서브메뉴 객체를 obj에 받아옴
         obj.style.display = "none";      
         // 현재 보이는 서브메뉴를 숨김
      }
      var obj = document.getElementById ("naviSub0" + num);
      // 현재 마우스가 오버된 메인메뉴의 서브메뉴 객체를 매개변수 num을 이용하여 obj에 받아옴
      obj.style.display = "block";
      // 현재 마우스가 오버된 메인메뉴의 서브메뉴를 보여줌
      cmenu = num;
   }   
   
   function dropDown() {
      
   }
   </script>
    
    <!-- Custom styles for this template -->
    <link href="<%=incSrc %>/css/headers.css" rel="stylesheet">
  </head>
<body>
  <header class="p-3 mb-3 border-bottom page-header">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start nav menu_wrap">
        <a href="<%=incSrc %>/index.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
         <img src="<%=incSrc %>/img/pingping_blue.png" alt="mdo" width="70" height="40" class="rounded-circle"><use xlink:href="#bootstrap"></use></svg>
        </a>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 dep1" >
          <li class="ulLi"><a href="<%=incSrc %>/camping/camp_list.camp" class="nav-link px-2 link-dark">커뮤니티</a>
         <ul class="dep2">
                <li><a href="<%=incSrc %>/camping/camp_list.camp" class="nav-link px-2 link-dark">캠핑후기</a></li>
                <li><a href="<%=incSrc %>/free/free_list.free" class="nav-link px-2 link-dark">질문과답변</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">이벤트</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">고객센터</a></li>
                <li><a href="<%=incSrc %>/brd_list.ntc" class="nav-link px-2 link-dark">공지사항</a></li>
             </ul>   
          </li>
          <li class="ulLi dep1"><a href="<%=incSrc %>/pdt_list.pdt" class="nav-link px-2 link-dark">스토어</a>
         <ul class="dep2">
            
                <li><a href="<%=incSrc %>/pdt_list.pdt" class="nav-link px-2 link-dark">카테고리</a></li>
                <li><a href="<%=incSrc %>/pdt_list.pdt" class="nav-link px-2 link-dark">베스트</a></li>
                <li><a href="#" class="nav-link px-2 link-dark"></a></li>
                <li><a href="#" class="nav-link px-2 link-dark"></a></li>
             </ul>
          </li>
          <li class="ulLi"><a href="<%=incSrc %>/monthly/month_list.month" class="nav-link px-2 link-dark">이달의추천</a></li>         
        </ul>
        
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" style="width:150px;">
          <input type="search" class="form-control" placeholder="검색" aria-label="Search" >
        </form>
        <img src="<%=incSrc %>/img/detective-magnifying-glass.png" alt="mdo" width="15" height="15" >
      <% if (memberInfo != null) { %>
         <div class="">
          <a href="#" style="margin-left:30px; ">
            <img src="<%=incSrc %>/img/bookmark.png" alt="mdo" width="20" height="20">
         </a>
         <a href="#" style="margin-left:30px;">
           <img src="<%=incSrc %>/img/buy-cart.png" alt="mdo"  width="22" height="22">
         </a>
         </div>
      <% } %>
      
      <% if (memberInfo == null) { %>
      <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="<%=incSrc %>/login_form.jsp" class="nav-link px-2 link-dark">로그인</a></li>
          <li><a href="<%=incSrc %>/member/join_form.jsp" class="nav-link px-2 link-dark">회원가입</a></li>
        </ul>
        <% } else { %>
           
        <div class="dropdown text-end"  style="margin-left:30px;">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
          </a>
          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
            <li><a class="dropdown-item" href="<%=incSrc %>/member/follower_list.mem">프로필</a></li>
            <li><a class="dropdown-item" href="<%=incSrc %>/order_list.ord">나의쇼핑</a></li>
            <li><a class="dropdown-item" href="<%=incSrc %>/review/review_list.review">나의리뷰</a></li>
            <li><a class="dropdown-item" href="<%=incSrc %>/">정보수정</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="<%=incSrc %>/logout.jsp">로그아웃</a></li>
          </ul>
        </div>
        <% } %>
      </div>
    </div>
  </header>