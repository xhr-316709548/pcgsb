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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/PageServlet")
public class PageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String pmop = request.getParameter("pmop");
        int page = 1;
        if(request.getParameter("page")!=null)page = Integer.parseInt(request.getParameter("page"));
        if(pmop.equals("movie")){
            ArrayList<movie> mList = (ArrayList<movie>) session.getAttribute("movieList");
            ArrayList<movie> mmList = new ArrayList<>();
            for(int i=(page-1)*5;i<(page-1)*5+5;i++){
                if(i<mList.toArray().length)
                    mmList.add(mList.get(i));
            }
            request.setAttribute("mList", mmList);
            request.setAttribute("page",page);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/movielist.jsp");
            rd.forward(request, response);
        }
        else{
            ArrayList<person> pList= (ArrayList<person>) session.getAttribute("personList");
            ArrayList<person> ppList = new ArrayList<>();
            for(int i=(page-1)*5;i<(page-1)*5+5;i++){
                if(i<pList.toArray().length)
                    ppList.add(pList.get(i));
            }
            request.setAttribute("pList", ppList);
            request.setAttribute("page",page);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/personlist.jsp");
            rd.forward(request, response);
        }
    }
}
