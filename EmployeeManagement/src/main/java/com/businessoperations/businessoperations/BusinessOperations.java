package com.businessoperations.businessoperations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public class BusinessOperations {

	String dbconnector="jdbc:mysql://biglgqh8uk3jdas1jikz-mysql.services.clever-cloud.com:3306/biglgqh8uk3jdas1jikz?user=usciqed31zgky9cx&password=6v8ytX685mwH6dFv7jQL";
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	public String DataInsertofnewemployee(EmpDaraDTO dto) {
		String status="";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dbconnector);
			pst = con.prepareStatement("insert into employeedata(fname,lname,email,mobileno,dob,gender,address,country,city,skills) values(?,?,?,?,?,?,?,?,?,?);");
			pst.setString(1, dto.getFname());
			pst.setString(2, dto.getLname());
			pst.setString(3, dto.getEmail());
			pst.setString(4, dto.getMobileno());
			pst.setString(5, dto.getDob());
			pst.setString(6, dto.getGender());
			pst.setString(7, dto.getAddress());
			pst.setString(8, dto.getCountry());
			pst.setString(9, dto.getCity());
			pst.setString(10, dto.getSkills());
			pst.executeUpdate();
			con.close();
			status = "successreg";

		} catch (Exception e) {
			e.printStackTrace();
			status = "error";

		}
		
		return status;
	}
	
//	public ArrayList<EmpDaraDTO> alldata() {
//		// TODO Auto-generated method stub
//		ArrayList<EmpDaraDTO> list=new ArrayList<>();
//		EmpDaraDTO dto ;
//		
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			con = DriverManager.getConnection(dbconnector);
//			pst = con.prepareStatement("select * from employeedata;");
//			rs=pst.executeQuery();
//			while(rs.next()) {
//				dto=new EmpDaraDTO();
//				dto.setFname(rs.getString("fname"));
//				dto.setLname(rs.getString("lname"));
//				dto.setEmail(rs.getString("email"));
//				dto.setMobileno(rs.getString("mobileno"));
//				dto.setDob(rs.getString("dob"));
//				dto.setGender(rs.getString("gender"));
//				dto.setAddress(rs.getString("address"));
//				dto.setCountry(rs.getString("country"));
//				dto.setCity(rs.getString("city"));
//				dto.setSkills(rs.getString("skills"));
//				list.add(dto);
//				
//			}
//			con.close();
//			
//
//		} catch (Exception e) {
//			e.printStackTrace();
//
//		}
//		
//		return list;
//	}
	
	
	
}
