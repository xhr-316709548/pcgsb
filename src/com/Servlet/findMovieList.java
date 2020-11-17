package com.Servlet;

import com.Bean.movie;
import com.Bean.person;
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
        ArrayList<person> pList;
        int page = 1;
        if(choose.equals("mName")){
            mList = dao.findmovie_by_moviename(request.getParameter("search"));
            request.getSession().setAttribute("movieList",mList);
            ArrayList<movie> mmList = new ArrayList<>();
            for(int i=0;i<5;i++){
                if(i<mList.toArray().length)
                    mmList.add(mList.get(i));
            }
            request.setAttribute("mList", mmList);
            int num = mList.toArray().length;
            request.getSession().setAttribute("num", num);
            request.setAttribute("page",page);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/movielist.jsp");
            rd.forward(request, response);
        }
        else{
            pList = dao.findperson_by_personname(request.getParameter("search"));
            request.getSession().setAttribute("personList",pList);
            ArrayList<person> ppList = new ArrayList<>();
            for(int i=0;i<5;i++){
                if(i<pList.toArray().length)
                    ppList.add(pList.get(i));
            }
            request.setAttribute("pList", ppList);
            int num = pList.toArray().length;
            request.getSession().setAttribute("num", num);
            request.setAttribute("page",page);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/personlist.jsp");
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
