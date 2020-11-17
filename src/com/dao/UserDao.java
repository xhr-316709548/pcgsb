package com.dao;

import com.Bean.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDao extends BaseDao{
    public ArrayList<movie> findmovie_by_moviename(String name){
        String sql="select * from movies where name like ? ";
        ArrayList<movie> movielist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, '%'+name+'%');
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    movie m=new movie();
                    m.setId(rst.getInt("id"));
                    m.setName(rst.getString("name"));
                    m.setCountry(rst.getString("country"));
                    m.setGenre(rst.getString("genre"));
                    m.setImg(rst.getString("img"));
                    m.setSummary(rst.getString("summary"));
                    m.setYear(rst.getString("year"));
                    m.setRate(rst.getString("rating"));
                    movielist.add(m);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return movielist;
    }

    public ArrayList<person> findperson_by_personname(String name){
        String sql="select * from person where name like ?;";
        ArrayList<person> personlist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, '%'+name+'%');
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    person p=new person();
                    p.setId(rst.getInt("id"));
                    p.setName(rst.getString("name"));
                    p.setBirthplace(rst.getString("birthplace"));
                    p.setBirthday(rst.getString("birthday"));
                    p.setImg(rst.getString("img"));
                    p.setSummary(rst.getString("summary"));
                    p.setSex(rst.getString("sex"));
                    personlist.add(p);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return personlist;
    }
    
    public ArrayList<movie> findmovie_by_personname(String name){
        String sql="select * from movies where id in(select movie_id from relationships where relationships.person_id in (select id from person where name like ?));";
        ArrayList<movie> movielist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, '%'+name+'%');
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    movie m=new movie();
                    m.setId(rst.getInt("id"));
                    m.setName(rst.getString("name"));
                    m.setCountry(rst.getString("country"));
                    m.setGenre(rst.getString("genre"));
                    m.setImg(rst.getString("img"));
                    m.setSummary(rst.getString("summary"));
                    m.setYear(rst.getString("year"));
                    m.setRate(rst.getString("rating"));
                    movielist.add(m);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return movielist;
    }

    public movie findmovie_by_movieid(String id){
        String sql="select * from movies where id = ? ";
        movie m = new movie();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            try (ResultSet rst = pstmt.executeQuery()) {
                if (rst.next()) {
                    m.setId(rst.getInt("id"));
                    m.setName(rst.getString("name"));
                    m.setCountry(rst.getString("country"));
                    m.setGenre(rst.getString("genre"));
                    m.setImg(rst.getString("img"));
                    m.setSummary(rst.getString("summary"));
                    m.setYear(rst.getString("year"));
                    m.setRate(rst.getString("rating"));
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return m;
    }

    public person findperson_by_personid(String id){
        String sql="select * from person where id = ? ";
        person p = new person();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            try (ResultSet rst = pstmt.executeQuery()) {
                if (rst.next()) {
                    p.setId(rst.getInt("id"));
                    p.setName(rst.getString("name"));
                    p.setBirthplace(rst.getString("birthplace"));
                    p.setBirthday(rst.getString("birthday"));
                    p.setImg(rst.getString("img"));
                    p.setSummary(rst.getString("summary"));
                    p.setSex(rst.getString("sex"));
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return p;
    }

    public ArrayList<person> findperson_by_movieid(String id){
        String sql="select * from person where id in (select person_id from relationships where movie_id = ?) ";
        ArrayList<person> personlist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    person p=new person();
                    p.setId(rst.getInt("id"));
                    p.setName(rst.getString("name"));
                    p.setBirthplace(rst.getString("birthplace"));
                    p.setBirthday(rst.getString("birthday"));
                    p.setImg(rst.getString("img"));
                    p.setSummary(rst.getString("summary"));
                    p.setSex(rst.getString("sex"));
                    personlist.add(p);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return personlist;
    }

    public ArrayList<movie> findmovie_by_personid(String id){
        String sql="select * from movies where id in (select movie_id from relationships where person_id = ?) ";
        ArrayList<movie> movielist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    movie m=new movie();
                    m.setId(rst.getInt("id"));
                    m.setName(rst.getString("name"));
                    m.setCountry(rst.getString("country"));
                    m.setGenre(rst.getString("genre"));
                    m.setImg(rst.getString("img"));
                    m.setSummary(rst.getString("summary"));
                    m.setYear(rst.getString("year"));
                    m.setRate(rst.getString("rating"));
                    movielist.add(m);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return movielist;
    }

    public ArrayList<person> findperson_by_movieid_role(String id,String role){
        String sql="select * from person where id in (select person_id from relationships where movie_id = ? and role = ?) ";
        ArrayList<person> personlist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            pstmt.setString(2, role);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    person p=new person();
                    p.setId(rst.getInt("id"));
                    p.setName(rst.getString("name"));
                    p.setBirthplace(rst.getString("birthplace"));
                    p.setBirthday(rst.getString("birthday"));
                    p.setImg(rst.getString("img"));
                    p.setSummary(rst.getString("summary"));
                    p.setSex(rst.getString("sex"));
                    personlist.add(p);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return personlist;
    }

    public ArrayList<link> search_movie_link(String movie_id){
        String sql="select person.name , movies.name , relationships.role from person , relationships , movies where movies.id = ? and relationships.movie_id=movies.id and relationships.person_id=person.id";
        ArrayList<link> linklist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, movie_id);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    link l=new link();
                    l.setName(rst.getString("role"));
                    l.setSource(rst.getString("movies.name"));
                    l.setTarget(rst.getString("person.name"));
                    linklist.add(l);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return linklist;
    }

    public ArrayList<link> search_person_link(String person_id){
        String sql="select person.name , movies.name , relationships.role from person , relationships , movies where person.id = ? and relationships.movie_id=movies.id and relationships.person_id=person.id";
        ArrayList<link> linklist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, person_id);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    link l=new link();
                    l.setName(rst.getString("role"));
                    l.setSource(rst.getString("movies.name"));
                    l.setTarget(rst.getString("person.name"));
                    linklist.add(l);
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return linklist;
    }

    public String findUser(String userName){
        String sql="select password from userInfo where userName=?";
        String s=null;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userName);
            try (ResultSet rst = pstmt.executeQuery()) {
                if (rst.next()) {
                    s = rst.getString("password");
                }
            }
        } catch (SQLException se) {
            return null;
        }
        return s;
    }

    public Boolean insertUser(user user){
        String sql="insert into userInfo (userName, email, password) VALUES (?,?,?)";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, user.getUserName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.executeUpdate();
            return true;
        } catch (SQLException se) {
            return false;
        }
    }

    public ArrayList<like> findLikesByUser(String userName){
        String sql="select * from ratInfo where user_count=(select user_count from userName where user_name=?)";
        ArrayList<like> likelist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userName);
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    like l=new like();
                    l.setUser_name(rst.getInt("user_count"));
                    l.setMovie_id(rst.getInt("movie_count"));
                    l.setRate(rst.getInt("rate"));
                    likelist.add(l);
                }
            }
        } catch (SQLException se) {
            System.out.println(se);
            return null;
        }
        return likelist;
    }

    public ArrayList<like> findAlllike(){
        String sql="select * from ratInfo  order by movie_count";
        ArrayList<like> likelist = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            try (ResultSet rst = pstmt.executeQuery()) {
                while (rst.next()) {
                    like l=new like();
                    l.setUser_name(rst.getInt("user_count"));
                    l.setMovie_id(rst.getInt("movie_count"));
                    l.setRate(rst.getInt("rate"));
                    likelist.add(l);
                }
            }
        } catch (SQLException se) {
            System.out.println(se);
        }
        return likelist;
    }

    public String findUsernameByCount(int count){
        String sql="select user_name from userName where user_count=?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, count);
            try (ResultSet rst = pstmt.executeQuery()) {
                if (rst.next()) {
                    return rst.getString("user_name");
                }
            }
        } catch (SQLException se) {
            System.out.println(se);
            return null;
        }
        return null;
    }
}
