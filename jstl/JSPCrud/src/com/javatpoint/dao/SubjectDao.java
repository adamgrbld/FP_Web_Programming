/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javatpoint.dao;

import com.javatpoint.bean.Subject;
import static com.javatpoint.dao.SubjectDao.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adam
 */
public class SubjectDao {
    public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Subject u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into subject(name,lecturer,semester,description) values(?,?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getLecturer());
		ps.setInt(3,u.getSemester());
		ps.setString(4,u.getDescription());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Subject u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update subject set name=?,lecturer=?,semester=?,description=? where id=?");
		ps.setString(1,u.getName());
		ps.setString(2,u.getLecturer());
		ps.setInt(3,u.getSemester());
		ps.setString(4,u.getDescription());
		ps.setInt(5,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Subject u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from subject where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Subject> getAllRecords(){
	List<Subject> list=new ArrayList<Subject>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from subject");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Subject u=new Subject();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setLecturer(rs.getString("lecturer"));
			u.setSemester(rs.getInt("semester"));
			u.setDescription(rs.getString("description"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Subject getRecordById(int id){
	Subject u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from subject where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Subject();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setLecturer(rs.getString("lecturer"));
			u.setSemester(rs.getInt("semester"));
			u.setDescription(rs.getString("description"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}