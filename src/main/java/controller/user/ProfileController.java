package controller.user;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dao.FollowDao;
import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Follow;
import vo.User;

@WebServlet("/profile")
public class ProfileController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User authUser = (User) req.getSession().getAttribute("authUser");
		if(authUser == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		}
		if(req.getParameter("userId") == null) {
			resp.sendRedirect(req.getContextPath() + "/error");
			return;
		}
		
		try {
			UserDao userDao = new UserDao();
			FollowDao followDao = new FollowDao();
			User foundUser =userDao.findById(req.getParameter("userId"));
			int follower = followDao.countByFollower(foundUser.getUserId());
			int following = followDao.countByFollowing(foundUser.getUserId());
			List<Follow> follows = followDao.findByFollower(foundUser.getUserId());
			boolean followed = false;
			
			for(Follow one : follows) {
				if(one.getFollowerId().equals(authUser.getUserId())) {
					followed = true;
					break;
				}
			}
			req.setAttribute("followed", followed);
			req.setAttribute("foundUser", foundUser);
			req.setAttribute("follower", follower);
			req.setAttribute("following", following);
			req.getRequestDispatcher("/WEB-INF/view/users/profile.jsp").forward(req, resp);
		} catch (SQLException e) {
			resp.sendRedirect(req.getContextPath() + "/error");
			e.printStackTrace();
		}
	}
}
