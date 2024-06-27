package controller.board;

import java.io.IOException;

import dao.BoardDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Board;
import vo.User;

@WebServlet("/board/delete")
public class BoardDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User authUser = (User) req.getSession().getAttribute("authUser");
			if(authUser == null) {
				resp.sendRedirect(req.getContextPath()+"/error");
				return;
			}
			
			
			BoardDao boardDao = new BoardDao();
			int boardId = Integer.parseInt(req.getParameter("boardId")); 
			Board found = boardDao.findByBoardId(boardId);
			
			
			boolean result;
			
			if(found == null || found.getWriterId() == null || !found.getWriterId().equals(authUser.getUserId())) {
				result = false;
				resp.sendRedirect(req.getContextPath()+"/error");
				return;
			}else {
				result = boardDao.deleteWriteView(boardId);
				resp.sendRedirect(req.getContextPath()+"/board/list");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
