package controller.comment;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import dao.CommentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Comment;
import vo.User;

@WebServlet("/comment-new")
public class NewCommentController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User authUser = (User)req.getSession().getAttribute("authUser");
		if(authUser == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		}
		try {
			CommentDao commentDao = new CommentDao();
			int boardId = Integer.parseInt(req.getParameter("boardId"));
			String body = req.getParameter("commentBody");
			
			Comment comment = new Comment(0, authUser.getUserId(), body, new Date(System.currentTimeMillis()), 0, boardId);
			boolean r = commentDao.saveComment(comment);
			if(r) {
				resp.sendRedirect(req.getContextPath() + "/board?boardId="+boardId);
			}else {
				resp.sendRedirect(req.getContextPath() + "/error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			resp.sendRedirect(req.getContextPath() + "/error");
		}
		
	}
}
