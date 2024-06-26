package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.datasource.impl.OracleDataSource;
import vo.Comment;
import vo.User;

public class CommentDao {
	
	public boolean saveComment(Comment comment) throws SQLException {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//13.125.210.77:1521/xe");
		ods.setUser("baseball_club");
		ods.setPassword("oracle");
		try (Connection conn = ods.getConnection()) {

			PreparedStatement stmt = conn.prepareStatement("insert into comments values(comments_seq.nextval,?,?,?,?,?)");
			stmt.setString(1, comment.getWriterId());
			stmt.setString(2, comment.getBody());
			stmt.setDate(3, comment.getWritedAt());
			stmt.setInt(4, comment.getLike());
			stmt.setInt(5, comment.getBoardId());

			int r = stmt.executeUpdate();

			return r >=0 ? true : false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean deleteComment(String userId) throws SQLException {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//13.125.210.77:1521/xe");
		ods.setUser("baseball_club");
		ods.setPassword("oracle");
		try (Connection conn = ods.getConnection()) {
			PreparedStatement stmt = conn.prepareStatement("delete from comments where writer_id=?");
			stmt.setString(1, userId);
			
			int r = stmt.executeUpdate();

			return r == 1 ? true : false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	
	public Comment findById(int boardId) throws SQLException {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//13.125.210.77:1521/xe");
		ods.setUser("baseball_club");
		ods.setPassword("oracle");
		try (Connection conn = ods.getConnection()) {

			PreparedStatement stmt = conn.prepareStatement("select * from comments where board_id=?");
			stmt.setInt(1, boardId);

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new Comment(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5),
						rs.getInt(6));
			} else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	
	
	
	
	
}
