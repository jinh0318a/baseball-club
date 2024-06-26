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

@WebServlet("/board/update")
public class BoardUpdateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User authUser = (User) req.getSession().getAttribute("authUser");

			int boardId = Integer.parseInt(req.getParameter("boardId")); 
			
			BoardDao boardDao = new BoardDao();
			
			Board board = boardDao.findByBoardId(boardId);
			
			req.setAttribute("board", board);
			
			
			req.getRequestDispatcher("/WEB-INF/view/board/update.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
