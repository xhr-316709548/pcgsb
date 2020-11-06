package com.Servlet;

import com.Bean.link;
import com.Bean.movie;
import com.Bean.person;
import com.Bean.point;
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
        ArrayList<person> dirList,autList,actList;
        ArrayList<link> linklist=new ArrayList<>();
        ArrayList<point> pointlist=new ArrayList<>();
        linklist = dao.search_movie_link(movieid);
        JSONArray linkresult = JSONArray.fromObject(linklist);
        point mp=new point();
        mp.setName(linklist.get(0).getSource());
        mp.setCategory(0);
        mp.setSymbolSize(100);
        pointlist.add(mp);
        for(int i=0;i<linklist.size();i++)
        {
            point p=new point();
            if(linklist.get(i).getName().equals("actor"))
            {
                p.setName(linklist.get(i).getTarget());
                p.setCategory(1);
            }
            else if(linklist.get(i).getName().equals("author"))
            {
                p.setName(linklist.get(i).getTarget());
                p.setCategory(2);
            }
            else
            {
                p.setName(linklist.get(i).getTarget());
                p.setCategory(3);
            }
            int flag=1;
            for(int j=0;j<pointlist.size();j++)
            {
                if(pointlist.get(j).getName().equals(p.getName()))
                {
                    flag=0;
                    if(pointlist.get(j).getCategory()<p.getCategory())
                    {
                        pointlist.get(j).setCategory(p.getCategory());
                    }
                    break;
                }
            }
            if(flag==1)pointlist.add(p);
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
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/moviesingle.jsp");
        rd.forward(request, response);
    }
}
