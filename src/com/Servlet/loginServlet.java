package com.Servlet;

import com.Bean.user;
import com.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        UserDao dao = new UserDao();
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        if(password.equals(dao.findUser(userName))) {
            session.setAttribute("uName",userName);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/recommendServlet");
            rd.forward(request, response);
        }
        else{
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/1.jsp");
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
