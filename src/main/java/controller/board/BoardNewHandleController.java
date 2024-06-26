package controller.board;

import java.io.IOException;
import java.sql.Date;

import dao.BoardDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Board;
import vo.User;

@WebServlet("/board/new-handle")
public class BoardNewHandleController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			User authUser = (User)req.getSession().getAttribute("authUser");
			
			String writerId = authUser.getUserId();
			String title = req.getParameter("title");
			String body = req.getParameter("body");
			Date writedAt = new Date(System.currentTimeMillis());
			String type = req.getParameter("type");
			String category = req.getParameter("category");
			
			Board board = new Board(0,writerId,title,body,0,writedAt,category,type);
			
			BoardDao boardDao = new BoardDao();
			
			boolean r = boardDao.save(board);
			
			if(r) {
				resp.sendRedirect(req.getContextPath()+"/board/list");
			}else {
				resp.sendRedirect(req.getContextPath()+"/error");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
}