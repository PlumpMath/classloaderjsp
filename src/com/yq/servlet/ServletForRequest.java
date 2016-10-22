package com.yq.servlet;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletForRequest
 */
@WebServlet("/jspdemo/ServletForRequest")
public class ServletForRequest extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletForRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //只有当jsp页面和servlet都设置了utf-8中文才能正常显示,
        //不能在setCharacterEncoding之前对reponse进行操作，否则setCharacterEncoding就失效了
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/plain");

        System.out.println("responseCharacterEncoding:" + response.getCharacterEncoding());

        request.setCharacterEncoding("UTF-8");
        System.out.println("requestCharacterEncoding:" + request.getCharacterEncoding());
        String param02 = request.getParameter("param02");
        System.out.println("param02:" + param02 +  " after URLDecoder,"
        + URLDecoder.decode(param02, "utf-8"));
        request.getRequestDispatcher("/WEB-INF/jsps/builtin9/request.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
