package oes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import oes.db.Provider;
import oes.db.Results;

public class ResultsDao {
	public static boolean insertResult(Results rt) {
		boolean status = false;
		try {

			Connection con = Provider.getOracleConnection();
			String sql = "insert into resultstable(username,subject,questions,attempted,correct,wrong) values(?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, rt.getUsername());
			pst.setString(2, rt.getSubject());
			pst.setInt(3, rt.getQuestions());
			pst.setInt(4, rt.getAttempted());
			pst.setInt(5, rt.getCorrect());
			pst.setInt(6, rt.getWrong());
			int val = pst.executeUpdate();
			if (val > 0) {
				status = true;
			} else {
				status = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static ArrayList<Results> getAllRecords(String username) {
		ArrayList<Results> samp = new ArrayList<Results>();
		try {
			samp.clear();
			Connection con = Provider.getOracleConnection();
			String sql = "select * from resultstable where username = ?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, username);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Results s = new Results();
				s.setUsername(rs.getString(1));
				s.setSubject(rs.getString(2));
				s.setQuestions(rs.getInt(3));
				s.setAttempted(rs.getInt(4));
				s.setCorrect(rs.getInt(5));
				s.setWrong(rs.getInt(6));
				samp.add(s);
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return samp;
	}
}
