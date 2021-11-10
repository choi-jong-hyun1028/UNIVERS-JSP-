package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import util.baseUtil;

public class UserDao {
	ResultSet rs;
	Connection conn = baseUtil.getConnection();

	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM member2 WHERE userID= ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			// pstmt.setString(2, userPassword);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					return 1;
				else
					return 0;
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;

	}
}
