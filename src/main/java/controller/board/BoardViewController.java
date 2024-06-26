package controller.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.BoardDao;
import dao.CommentDao;
import dao.ParticipantDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.Board;
import vo.Comment;
import vo.Participant;
import vo.User;

@WebServlet("/board/*")
public class BoardViewController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User authUser = (User) req.getSession().getAttribute("authUser");
			int boardId = Integer.parseInt(req.getParameter("boardId"));

			if (req.getParameter("boardId") == null) {
				resp.sendRedirect(req.getContextPath() + "/board/list");
				return;
			} else {

				BoardDao boardDao = new BoardDao();
				Board board = boardDao.findByBoardId(boardId);
				boardDao.increaseViews(boardId);

				ParticipantDao participantDao = new ParticipantDao();

				List<Participant> participant = participantDao.findByEventId(boardId);
				List<String> userIds = new ArrayList<>();
				boolean duplicate = false;
				if (authUser != null) {
					for (Participant one : participant) {
						userIds.add(one.getUserId());
						if (one.getUserId().equals(authUser.getUserId())) {
							duplicate = true;
							break;
						}
					}
				}

				int participantNum = userIds.size();

				boolean clubEvent = board.getType().equals("이벤트") && board.getCategory().equals("자체");

				req.setAttribute("duplicate", duplicate);
				req.setAttribute("participantNum", participantNum);
				req.setAttribute("clubEvent", clubEvent);
				req.setAttribute("board", board);

				CommentDao commentDao = new CommentDao();
				List<Comment> comments = commentDao.findByBoardId(boardId);
				req.setAttribute("board", board);
				req.setAttribute("comments", comments);

			}

			req.getRequestDispatcher("/WEB-INF/view/board/view.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
