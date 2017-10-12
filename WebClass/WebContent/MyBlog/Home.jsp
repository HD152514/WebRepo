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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/WebClass/css/style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  	<script src="/WebClass/js/java.js"></script>
  </head>
  
  <body>
  <!-- ë©ë´ë° -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand active" href="/WebClass/MyBlog/Home.hsp" >ë°ë³´í</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/join.jsp" target="blank">íìê°ì</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/Introduce.jsp">Introduce</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/Favorite.jsp">Favorite</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/MyBlog/Dream.jsp">Dream</a>
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
   <div class="container">
       <h1>ìëíì¸ì!</h1>
      <p>ì  ê°ì¸ ë¸ë¡ê·¸ì ìì£¼ìì ê°ì¬í©ëë¤. ë´ì©ì ë¶ëë¬ì°ëê¹ ì ìëë§ ì½ì´ì£¼ì¨ì¼ë©´ ì¢ê² ìµëë¤!<br>
      	ìë° ì ìëì´ ìëìë©´ ì´ ì°½ì êº¼ì£¼ì¸ì ~~~!!</p>
   </div>
   
   <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">ë¡ê·¸ì¸ ê²°ê³¼</h5>
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