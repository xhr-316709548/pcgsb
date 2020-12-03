package com.Servlet;

import com.Bean.*;
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
import java.util.Comparator;


@WebServlet(urlPatterns = "/showMovie")
public class showMovie extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        UserDao dao = new UserDao();
        String movieid = request.getParameter("movieid");
        movie m = dao.findmovie_by_movieid(movieid);
        ArrayList<person> dirList,autList,actList,plist;
        ArrayList<link> linklist;
        ArrayList<point> pointlist=new ArrayList<>();
        linklist = dao.search_movie_link(movieid);
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
        plist = dao.findperson_by_movieid(movieid);
        ArrayList<String> persons=new ArrayList<>();
        for(int i=0;i<plist.size();i++)
        {
            persons.add(plist.get(i).getName());
        }
        JSONArray pointresult=JSONArray.fromObject(pointlist);
        dirList = dao.findperson_by_movieid_role(movieid,"director");
        autList = dao.findperson_by_movieid_role(movieid,"author");
        actList = dao.findperson_by_movieid_role(movieid,"actor");
        request.setAttribute("dirList", dirList);
        request.setAttribute("autList", autList);
        request.setAttribute("actList", actList);
        request.setAttribute("linklist",linkresult.toString());
        request.setAttribute("pointlist",pointresult.toString());
        request.setAttribute("movie", m);
        ArrayList<Movie_sum> Movie_sums=dao.search_movie(persons);
        Movie_sums.sort(new Comparator<Movie_sum>() {
            @Override
            public int compare(Movie_sum o1, Movie_sum o2) {
                return o2.getSum()-o1.getSum();
            }
        });
//        System.out.println(Movie_sums.size());
        for(int i=0;i<10;i++)
        {
            System.out.println(Movie_sums.get(i).getMovie_id());
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/moviesingle.jsp");
        rd.forward(request, response);
    }
}
