<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>qhgus's Blog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style3.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="../js/java.js"></script>
     
  </head>
 <body>
  <!-- 메뉴바 -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/WebClass/MyBlog/Home.jsp">박보현</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/join.jsp" target="blank">회원가입</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/Introduce.jsp">Introduce</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/Favorite.jsp">Favorite</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link active" href="/WebClass/MyBlog/Dream.jsp">Dream</a>
      </li>
    </ul>
    
     <%
		UserVO user = (UserVO)session.getAttribute("user");
		if(user==null){			
	%>
    <form class="form-inline my-2 my-lg-0" id="loginForm">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
	<%
	} else{
	%>
	<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
       <li class="nav-item dropdown">
         <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <%= user.getName()%>님
         </a>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
            <form action = "/WebClass/logout" method = "post">
            <button type="submit" class="dropdown-item">Sign out</button>
            </form>
             <div class="dropdown-divider"></div>
           <button type="button" class="dropdown-item">Action1</button>
           <button type="button" class="dropdown-item">Action2</button>
         </div>
       </li>
    </ul>
	<%
		}
	%>
  </div>
</nav>
<div id="asdf">
 <img src = "http://imgnews.naver.net/image/032/2015/07/03/khan_l2EMav_99_20150703172908.jpg?type=w540" alt="한양대학교">
</div>
 <div class="container">
<h2>My Dream</h2>
<p></p>
<h4>나의 꿈</h4><p></p>

일단 지금 나의 꿈? 목표?는 대학 진학이다. 내신 등급이 4점대라 일단 수시는 반포기 상태고 정시가 힘든 걸 알고 있기 때문에 요즘 열심히 공부중이다!<br>
한양대를 목표 대학으로 갖고 있지만 더 열심히 해야한다! 과는 기계공학과에 진학하고 싶다<br>
기계공학자가 내 꿈인데 아직 디테일한 꿈은 정하지 않았다. 의료기기기술자도 하고싶고 화장품연구원?도 하고싶고 아직 확실한 꿈은 정하지 못했다.<br>
html을 처음 배울 때는 웹개발에 흥미가 생겨서 웹개발자가 되고 싶었는데 jquery나 bootstrap 등을 배우는 순간 그냥 포기했다ㅎㅎ 

<p></p>
대학을 졸업 한 후에는 빨리 취직을 해서 돈을 빨리 벌고 결혼도 빨리 하고 싶다.<br>
아 그리고 친구들이랑 해외여행도 가고싶다<br>

<p></p>
일단 대학을 가면 모든 일이 스무스하게 이루어질 것 같다. 공부 열심히해서 수능 대박이나 쳐야지 ㅎㅎ

</div>
 <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 
  </body>
</html>