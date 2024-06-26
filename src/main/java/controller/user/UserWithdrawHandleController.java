package controller.user;

import java.io.IOException;
import java.sql.SQLException;

import dao.BoardDao;
import dao.CommentDao;
import dao.FollowDao;
import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.User;

@WebServlet("/withdraw-handle")
public class UserWithdrawHandleController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User authUser = (User) req.getSession().getAttribute("authUser");
		if(authUser == null) {
			resp.sendRedirect(req.getContextPath()+"/login");
			return;
		}
		
		try {
			UserDao userDao = new UserDao();
			BoardDao boardDao = new BoardDao();
			FollowDao followDao = new FollowDao();
			CommentDao commentDao = new CommentDao();
			boolean r = false;
			if(authUser.getPassword().equals(req.getParameter("password"))) {
				boolean a = commentDao.deleteCommentByUser(authUser.getUserId());
				boolean b = boardDao.deleteByWriterId(authUser.getUserId());
				boolean c = followDao.deleteUser(authUser.getUserId());
				boolean d = userDao.deleteUser(authUser.getUserId());
				if(a && b && c && d) {
					r = true;
				}
			}
			
			if(r) {
				resp.sendRedirect(req.getContextPath()+"/login");
			}else {
				resp.sendRedirect(req.getContextPath()+"/error");
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.sendRedirect(req.getContextPath()+"/error");
		}
		
	}
}
