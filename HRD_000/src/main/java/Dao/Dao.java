package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import DBPKG.DBManager;
import vo.MemberTbl;

public class Dao {
	
	//==싱글턴 
	private Dao() {}
	private static Dao dao = new Dao();
	public static Dao getInstance() {
		return dao;
	}
	//-----------------------
	//  회원 번호 발급 (시퀀스 값 읽어오기)
	public int selectNextCustno() {
		int num = -1;
		
		String sql = "SELECT member_tbl_seq.nextval FROM dual";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				num = rs.getInt(1);
			}
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return num;
	}
	
	//-----------------------------------------------
	//회원가입
	public void insertMember(MemberTbl member) {
		String sql = "INSERT INTO member_tbl_02 VALUES(?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, member.getCustno());
			psmt.setString(2, member.getCustname());
			psmt.setString(3, member.getPhone());
			psmt.setString(4, member.getAddress());
			psmt.setString(5, member.getJoindate());
			psmt.setString(6, member.getGrade());
			psmt.setString(7, member.getCity());
			
			psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, psmt);
		}
	}
	
	
	
}
