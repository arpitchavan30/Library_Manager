package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Connection.Connection_to_DB;
import com.Model.Login;
import com.Model.adLogin;

public class Login_Dao {
	Connection con=null;
	Connection_to_DB m=new Connection_to_DB();
	PreparedStatement pstate;
	
	
//UserLogin	
	
	public boolean LoginAccount(Login login) {
		boolean b=false;
		con=m.getConnection();
		
		try {
			pstate=con.prepareStatement("select * from UserData where umail=? and uPass=?");
			pstate.setString(1, login.getuMail());
			pstate.setString(2, login.getuPass());
			
			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {
				b=true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}
	
//Admin Login

	public boolean LoginadAccount(adLogin adlog) {
		boolean b=false;
		con=m.getConnection();
		
		try {
			pstate=con.prepareStatement("select * from AdminData where Admail=? and Adpass=?");
			pstate.setString(1, adlog.getAdMail());
			pstate.setString(2, adlog.getAdPass());
			
			ResultSet rs=pstate.executeQuery();
			
			if(rs.next()) {
				b=true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return b;
	}

}
