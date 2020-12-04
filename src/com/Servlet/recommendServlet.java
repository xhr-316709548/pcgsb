package com.Servlet;

import com.Bean.movie;
import com.dao.UserDao;
import com.Bean.like;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/recommendServlet")
public class recommendServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=request.getSession().getAttribute("uName").toString();
        UserDao userdao = new UserDao();
        ArrayList<like> likeLists = userdao.findAlllike();                                       //其他用户喜欢的论文列表
        int[][] curMatrix = new int[3327][28603];//当前矩阵
        for(int i=0;i<likeLists.size();i++)
        {
            curMatrix[likeLists.get(i).getUser_name()-1][likeLists.get(i).getMovie_id()-1]=likeLists.get(i).getRate();
        }
        ArrayList<like> userlikeLists=userdao.findLikesByUser(userName);
        int[] n=new int[28603];
        for(int i=0;i<userlikeLists.size();i++)
        {
            n[userlikeLists.get(i).getMovie_id()-1]=userlikeLists.get(i).getRate();
        }
        double [] recommendlist=new double[3327];
        for(int j=0;j<3327;j++)
        {
            double simVal = 0;
            double num = 0;
            double den = 1;
            double powa_sum = 0;
            double powb_sum = 0;
            for(int i=0;i<28603;i++)
            {
                num = num + n[i] * curMatrix[j][i];
                powa_sum = powa_sum + (double) Math.pow(n[i], 2);
                powb_sum = powb_sum + (double) Math.pow(curMatrix[j][i], 2);
            }
            double sqrta = (double) Math.sqrt(powa_sum);
            double sqrtb = (double) Math.sqrt(powb_sum);
            den = sqrta * sqrtb;
            recommendlist[j]=num/den;
        }
        int[] a = new int[4];
        int lnum=0;
        double max=0;
        for(int i=0;i<3327;i++)
        {
            if(recommendlist[i]>max){
                max=recommendlist[i];
                lnum=i+1;
            }
        }
        recommendlist[lnum-1]=0;
        max=0;
        for(int i=0;i<3327;i++)
        {
            if(recommendlist[i]>max){
                max=recommendlist[i];
                lnum=i+1;
            }
        }
        recommendlist[lnum-1]=0;
        a[0]=lnum;
        max=0;
        for(int i=0;i<3327;i++)
        {
            if(recommendlist[i]>max){
                max=recommendlist[i];
                lnum=i+1;
            }
        }
        recommendlist[lnum-1]=0;
        a[1]=lnum;
        max=0;
        for(int i=0;i<3327;i++)
        {
            if(recommendlist[i]>max){
                max=recommendlist[i];
                lnum=i+1;
            }
        }
        recommendlist[lnum-1]=0;
        a[2]=lnum;
        max=0;
        for(int i=0;i<3327;i++)
        {
            if(recommendlist[i]>max){
                max=recommendlist[i];
                lnum=i+1;
            }
        }
        recommendlist[lnum-1]=0;
        a[3]=lnum;
        ArrayList<String> recommendUser = new ArrayList<>();
        recommendUser.add(userdao.findUsernameByCount(a[0]));
        recommendUser.add(userdao.findUsernameByCount(a[1]));
        recommendUser.add(userdao.findUsernameByCount(a[2]));
        recommendUser.add(userdao.findUsernameByCount(a[3]));
        request.setAttribute("recommendUser",recommendUser);
        ArrayList<Integer> rmList = userdao.findMovieByUserName(userName);
        ArrayList<movie> recommendMovie = new ArrayList<>();
        if(rmList.toArray().length>=5){
            for(int i=0;i<5;i++)
                recommendMovie.add(userdao.findRecommendMovieByMovieid(rmList.get(i)));
        }
        else{
            recommendMovie.add(userdao.findmovie_by_movieid("1291543"));
            recommendMovie.add(userdao.findmovie_by_movieid("1291544"));
            recommendMovie.add(userdao.findmovie_by_movieid("1291545"));
            recommendMovie.add(userdao.findmovie_by_movieid("1291546"));
            recommendMovie.add(userdao.findmovie_by_movieid("1291548"));
        }
        request.setAttribute("recommendMovie",recommendMovie);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
