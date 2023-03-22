package com.Dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.Connection.Connection_to_DB;
import com.Model.ReturnBook;
import com.Model.UpdateAdmin;
import com.Model.UpdateAdminPass;
import com.Model.UpdateUser;
import com.Model.UpdateUserPass;
import com.Model.UserHistory;
public class MyAcc_Dao {
	Connection con=null;
	Connection_to_DB m=new Connection_to_DB();
	PreparedStatement pstate;

	//get user data

	public String[] userdata(String userMail) {
		String i=null;
		con=m.getConnection();
		String[] arr = new String[2];
		try {
			pstate=con.prepareStatement("select * from userData where umail=?");
			pstate.setString(1, userMail);

			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {

				arr[0]=rs.getString(1);
				arr[1]=rs.getString(3);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}


	//update user data

	public int updateUser(UpdateUser updtuser) {
		int i=0;
		con=m.getConnection();

		try {
			pstate=con.prepareStatement("update UserData set uName=? , uMobno=? where uMail=?");
			pstate.setString(1, updtuser.getNewName());
			pstate.setString(2, updtuser.getNewMob());
			pstate.setString(3, updtuser.getRegMail());


			i=pstate.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	// update user Pass
	public int updateUserPass(UpdateUserPass updtPass) {
		int j=0;
		con=m.getConnection();


		try {
			pstate=con.prepareStatement("update UserData set uPass=? where uPass=?");
			pstate.setString(1, updtPass.getNewPass());
			pstate.setString(2, updtPass.getOldPass());


			j=pstate.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Something went wrong");
		}
		return j;
	}

// update user history
	public boolean updateUserHistory(UserHistory uhistory) {
		boolean b=false;
		con=m.getConnection();
		
		try {
			pstate=con.prepareStatement("insert into history values(?,?,?,?)");
			pstate.setString(1, uhistory.getUsermail());
			pstate.setString(2, uhistory.getBookid());
			pstate.setString(3, uhistory.getIssuedate());
			pstate.setString(4, null);
			

			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {
				b=true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}
	
// return book
	
	public boolean returnbook(ReturnBook rebook) {
		boolean b=false;
		con=m.getConnection();
		
		try {
			pstate=con.prepareStatement("update history set Return_date=? where Umail=? and Book_ID=?");
			pstate.setString(1, rebook.getReDate());
			pstate.setString(2, rebook.getUMail());
			pstate.setString(3, rebook.getBookId());
			

			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {
				b=true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return b;
	}

	
	// display user history.
	
	/*	public Statement history(String userMail) {
			Statement rs=null;
			con=m.getConnection();


			try {
				java.sql.Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from history where UMail=?");
				((PreparedStatement) st).setString(1,userMail);
				
				System.out.println("\n==================================================");
				while(rs.next()) {
					System.out.println(rs.getNString(1)+"\t"+rs.getString(2)+"\t\t"+rs.getString(3)+"\t\t"+rs.getString(4));
				}

			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("Something went wrong");
			}
			return rs;
		}*/



	//get Admin data

	public String[] Addata(String AdMail) {
		String i=null;
		con=m.getConnection();
		String[] arr = new String[3];
		try {
			pstate=con.prepareStatement("select * from AdminData where Admail=?");
			pstate.setString(1, AdMail);

			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {

				arr[0]=rs.getString(1);
				arr[1]=rs.getString(2);
				arr[2]=rs.getString(3);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}


//update Admin data

	public int updateAd(UpdateAdmin updtAd) {
		int i=0;
		con=m.getConnection();

		try {
			pstate=con.prepareStatement("update AdminData set Admail=? , Adname=? , Admobno=?  where AdminID=?");
			pstate.setString(1, updtAd.getAdMail());
			pstate.setString(2, updtAd.getAdName());
			pstate.setString(3, updtAd.getAdMob());
			pstate.setString(4, updtAd.getAdID());

			i=pstate.executeUpdate();
			System.out.println(i);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	// update admin pass
	public int updateAdPass(UpdateAdminPass updtadPass) {
		int j=0;
		con=m.getConnection();

		try {
			pstate=con.prepareStatement("update AdminData set Adpass=? where Adpass=?");
			pstate.setString(1, updtadPass.getAdNewPass());
			pstate.setString(2, updtadPass.getAdOldPass());

			j=pstate.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Something went wrong");
		}
		return j;
	}




}