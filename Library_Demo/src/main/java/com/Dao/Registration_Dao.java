package com.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Connection.Connection_to_DB;
import com.Model.Register;
import com.Model.adRegister;


public class Registration_Dao {

		Connection con=null;
		Connection_to_DB m=new Connection_to_DB();
		PreparedStatement pstate;
		
//User Register
		
		public int CreateAccount(Register register) {
			int i=0;
			con=m.getConnection();
			try {
				pstate=con.prepareStatement("Insert into UserData values(?,?,?,?)");
				pstate.setString(1, register.getuName());
				pstate.setString(2, register.getuEmail());
				pstate.setString(3, register.getuMob());
				pstate.setString(4, register.getuPass());
				
				i=pstate.executeUpdate();
				

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
		}

// Admin Register
		
		public int CreateadadAccount(adRegister adreg) {
			int i=0;
			con=m.getConnection();
			try {
				pstate=con.prepareStatement("Insert into AdminData values(?,?,?,?,?)");
				pstate.setString(1, adreg.getAdMail());
				pstate.setString(2, adreg.getAdName());
				pstate.setString(3, adreg.getAdMob());
				pstate.setString(4, adreg.getAdId());
				pstate.setString(5, adreg.getAdPass());
				
				i=pstate.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
		}
}

