package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.baseUtil;

public class UserDao4 {
		Connection conn = baseUtil.getConnection();
		

		public int join(String Title, String Contents) {
			//String SQL = "INSERT INTO test0723 VALUES (?,?)";
//			String SQL = "INSERT INTO qwe0723 VALUES (?,?,NOW())";
			String SQL = "INSERT INTO `sys`.`qwe0723` (`Title`, `Contents`, `Date`) VALUES (?,?,NOW())";
			try {
	// 각각의 데이터를 실제로 넣어준다. 
				PreparedStatement pstmt = conn.prepareStatement(SQL);
	// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
				pstmt.setString(1, Title);
				pstmt.setString(2, Contents);
				
	// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
				return pstmt.executeUpdate();
			} catch (Exception e) {
				System.out.println("BBBBBBBBBBBB");
				e.printStackTrace();
			}
			return -1;
		}
}

