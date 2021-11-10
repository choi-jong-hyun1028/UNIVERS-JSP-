package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.baseUtil;

public class UserDao2 {
	Connection conn = baseUtil.getConnection();

	public int join(String userID, String userPassword, String userName, String userEmail) {
		/* String SQL = "INSERT INTO MEMBER2 VALUES (?,?,?,?)"; */
		String SQL = "INSERT INTO `sys`.`member` (`userID`, `userPassword`, `userName`, `userEmail`) VALUES (?, ?, ?, ?)";
		try {
// 각각의 데이터를 실제로 넣어준다. 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			pstmt.setString(4, userEmail);
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("BBBBBBBBBBBB");
			e.printStackTrace();
		}
		return -1;
	}
}

