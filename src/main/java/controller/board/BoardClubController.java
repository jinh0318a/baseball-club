package controller.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.BoardDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Board;

@WebServlet("/board/club")
public class BoardClubController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int p = req.getParameter("p") == null ? 1 : Integer.parseInt(req.getParameter("p"));

			int size = 15;
			int start = size * (p - 1) + 1;
			int end = size * p;

			BoardDao boardDao = new BoardDao();
			List<Board> board = boardDao.findByAll(start, end);

			int count = boardDao.countAll();
			int totalPages = count / size + (count % size > 0 ? 1 : 0);

			List<Board> clubBoard = new ArrayList<Board>();
			for (Board one : board) {
				String type = one.getType();
				if (type.equals("구단")) {
					boardDao.searchBoardByType(type);
					clubBoard.add(one);
				}
			}
			List<Board> announcement = new ArrayList<Board>();
			

			for (Board one : board) {
				String type = one.getType();
				if (type.equals("공지사항")) {
					boardDao.searchBoardByType(type);
					announcement.add(one);
				}
			}
			req.setAttribute("clubBoard", clubBoard);
			req.setAttribute("announcement", announcement);
			req.setAttribute("totalPages", totalPages);
			req.getRequestDispatcher("/WEB-INF/view/board/clubList.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
