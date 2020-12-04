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
import java.util.Collections;
import java.util.Comparator;

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
        ArrayList<link> linklist;
        ArrayList<point> pointlist=new ArrayList<>();
        linklist = dao.search_person_link(personid);
        JSONArray linkresult = JSONArray.fromObject(linklist);
        point pp=new point();
        pp.setName(linklist.get(0).getTarget());
        pp.setCategory(0);
        pp.setSymbolSize(100);
        pointlist.add(pp);
        for (com.Bean.link link : linklist) {
            point pt = new point();
            if (link.getName().equals("actor")) {
                pt.setName(link.getSource());
                pt.setCategory(1);
            } else if (link.getName().equals("author")) {
                pt.setName(link.getSource());
                pt.setCategory(2);
            } else {
                pt.setName(link.getSource());
                pt.setCategory(3);
            }
            int flag = 1;
            for (com.Bean.point point : pointlist) {
                if (point.getName().equals(pt.getName())) {
                    flag = 0;
                    if (point.getCategory() < pt.getCategory()) {
                        point.setCategory(pt.getCategory());
                    }
                    break;
                }
            }
            if (flag == 1) pointlist.add(pt);
        }
        mList = dao.findmovie_by_personid(personid);
        ArrayList<String> movies=new ArrayList<>();
        for(int i=0;i<mList.size();i++)
        {
            movies.add(mList.get(i).getName());
        }
        JSONArray pointresult=JSONArray.fromObject(pointlist);
        request.setAttribute("linklist",linkresult.toString());
        request.setAttribute("pointlist",pointresult.toString());
        request.setAttribute("mList", mList);
        request.setAttribute("person", p);
        ArrayList<Person_sum> person_sums=dao.search_person(movies);
        person_sums.sort(new Comparator<Person_sum>(){
            @Override
            public int compare(Person_sum p1 , Person_sum p2 ) {
                //这里是根据ID来排序，所以它为空的要剔除掉
                return (p2.getSum()-p1.getSum());
                 //这是顺序
            }
        });
        ArrayList<person> spList = new ArrayList<>();
        for(int i=1;i<11;i++)
        {
            spList.add(dao.findperson_by_personid(Integer.toString(person_sums.get(i).getPerson_id())));
            request.setAttribute("spList", spList);
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/personsingle.jsp");
        rd.forward(request, response);
    }
}
