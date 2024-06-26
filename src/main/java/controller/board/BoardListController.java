package controller.board;

import java.io.IOException;
import java.util.List;

import dao.BoardDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Board;

@WebServlet("/board/list")
public class BoardListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int p = req.getParameter("p") == null ? 1 : Integer.parseInt(req.getParameter("p"));

			int size = 15;
			int start = size * (p-1) + 1;
			int end = size * p;

			
			BoardDao boardDao = new BoardDao();
			List<Board> board = boardDao.findByAll(start,end);
			
			int count = boardDao.countAll();
			int totalPages = count / size + (count % size > 0 ? 1 : 0);
			
			req.setAttribute("totalPages", totalPages);
			req.setAttribute("boards", board);
			req.setAttribute("currentPage",  p);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		req.getRequestDispatcher("/WEB-INF/view/board/list.jsp").forward(req, resp);
		
		
	}
}
