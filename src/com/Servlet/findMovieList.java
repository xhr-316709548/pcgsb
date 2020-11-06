package com.Servlet;

import com.Bean.movie;
import com.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/findMovieList")
public class findMovieList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        UserDao dao = new UserDao();
        String choose = request.getParameter("fchoose");
        ArrayList<movie> mList;
        if(choose.equals("mName")){
            mList = dao.findmovie_by_moviename(request.getParameter("search"));
            request.setAttribute("mList", mList);
        }
        else{
            mList = dao.findmovie_by_personname(request.getParameter("search"));
            request.setAttribute("mList", mList);
        }
        int num = mList.toArray().length;
        request.setAttribute("num", num);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/movielist.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
