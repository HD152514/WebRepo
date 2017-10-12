package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		RequestDispatcher rd = request.getRequestDispatcher("MyBlog/Home.jsp");
	      rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();  
		String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    System.out.printf("id : %s, pwd: %s\n", id, pwd);
	      
	      // id, pwd 정합성 체크
	      boolean result;
	      if("test@naver.com".equals(id)){
	    	  result = true;
	      } else{
	    	  result = false;
	      }
	      Gson gson = new Gson();
	         JsonObject object = new JsonObject();
	         
	      if(result){
	         // 세션에 사용자 정보를 생성해서 담기
	         HttpSession session = request.getSession();
	         UserVO user = new UserVO();
	         user.setId(id);
	         user.setName("보현");
	         user.setNickname("보현");
	         session.setAttribute("user", user);
	         
	         object.addProperty("msg", "good");
	         object.addProperty("result", result);
	         
	         
	      }
	      else{
	    	  object.addProperty("msg", "nope");
	      }
	      
	      out.write(gson.toJson(object));
	      out.close();
	}

}
