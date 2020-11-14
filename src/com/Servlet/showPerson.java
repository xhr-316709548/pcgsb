package com.Servlet;

import com.Bean.*;
import com.Bean.person;
import com.dao.UserDao;
import net.sf.json.JSONArray;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/showPerson")
public class showPerson extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        UserDao dao = new UserDao();
        String personid = request.getParameter("personid");
        person p = dao.findperson_by_personid(personid);
        ArrayList<movie> mList;
        /*ArrayList<link> linklist;
        ArrayList<point> pointlist=new ArrayList<>();
        linklist = dao.search_person_link(personid);
        JSONArray linkresult = JSONArray.fromObject(linklist);
        point mp=new point();
        mp.setName(linklist.get(0).getSource());
        mp.setCategory(0);
        mp.setSymbolSize(100);
        pointlist.add(mp);
        for (com.Bean.link link : linklist) {
            point p = new point();
            if (link.getName().equals("actor")) {
                p.setName(link.getTarget());
                p.setCategory(1);
            } else if (link.getName().equals("author")) {
                p.setName(link.getTarget());
                p.setCategory(2);
            } else {
                p.setName(link.getTarget());
                p.setCategory(3);
            }
            int flag = 1;
            for (com.Bean.point point : pointlist) {
                if (point.getName().equals(p.getName())) {
                    flag = 0;
                    if (point.getCategory() < p.getCategory()) {
                        point.setCategory(p.getCategory());
                    }
                    break;
                }
            }
            if (flag == 1) pointlist.add(p);
        }
        JSONArray pointresult=JSONArray.fromObject(pointlist);
        request.setAttribute("linklist",linkresult.toString());
        request.setAttribute("pointlist",pointresult.toString());*/
        mList = dao.findmovie_by_personid(personid);
        request.setAttribute("mList", mList);
        request.setAttribute("person", p);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/personsingle.jsp");
        rd.forward(request, response);
    }
}
