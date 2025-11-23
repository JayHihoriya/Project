package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import connection.DbConnection;
import model.member;

public class memberDao {
	
	public static void insertMember(member m) {
		try {
			Connection conn = DbConnection.createConnection();
			String sql = "insert into member(first_name,last_name,gender,dob,email,password,contact_no,occupation,block,flat_no,address,photo) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, m.getFirstName());
			pst.setString(2, m.getLastName());
			pst.setString(3, m.getGender());
			pst.setString(4, m.getDob());
			pst.setString(5, m.getEmail());
			pst.setString(6, m.getPassword());
			pst.setLong(7, m.getContactNo());
			pst.setString(8, m.getOccupation());
			pst.setString(9, m.getBlock());
			pst.setString(10, m.getFlat_no());
			pst.setString(11, m.getAddress());
			pst.setString(12, m.getPhoto());

			pst.executeUpdate();
			System.out.println("data inserted");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			Connection conn = DbConnection.createConnection();
			String url = "select * from member where email=?";
			PreparedStatement pst = conn.prepareStatement(url);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static member memberLogin(String email, String pass) {
		member m = null;
		try {
			Connection conn = DbConnection.createConnection();
			String sql = "SELECT * FROM member WHERE email = ? AND password = ? AND status = 'approve'";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				m = new member();
				m.setMemberId(rs.getInt("member_id"));
				m.setFirstName(rs.getString("first_name"));
				m.setLastName(rs.getString("last_name"));
				m.setGender(rs.getString("gender"));
				m.setDob(rs.getString("dob"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
				m.setContactNo(rs.getLong("contact_no"));
				m.setOccupation(rs.getString("occupation"));
				m.setBlock(rs.getString("block"));
				m.setFlat_no(rs.getString("flat_no"));
				m.setAddress(rs.getString("address"));
				m.setPhoto(rs.getString("photo"));
				System.out.println(m);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	
	public static List<Integer> getBookedFlatsByBlock(String block) throws SQLException {
        List<Integer> flats = new ArrayList<>();
        String sql = "SELECT flat_no FROM member WHERE block = ?";

        try (Connection con = DbConnection.createConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, block);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                flats.add(rs.getInt("flat_no"));
            }
        }
        return flats;
    }
	public static void updatePass(String email, String newpass) {
		try {
			Connection conn = DbConnection.createConnection();
			String sql = "update member set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, newpass);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("password updated");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
