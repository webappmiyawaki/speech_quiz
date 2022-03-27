package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ConnectSpeechQuizDatabase;

@WebServlet("/QuizResultAll")
public class QuizResultAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ConnectSpeechQuizDatabase csqd = new ConnectSpeechQuizDatabase();
		HttpSession session = request.getSession(true);
		session.setAttribute("classResult",csqd.toSelectAllResult());
		request.getRequestDispatcher("/WEB-INF/jsp/resultAll.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
