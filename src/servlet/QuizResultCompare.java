package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Result;
import model.ResultCompare;

@WebServlet("/QuizResultCompare")
public class QuizResultCompare extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
			ResultCompare resultCompare = new ResultCompare((Result)session.getAttribute("result"));
			session.setAttribute("resultList", resultCompare.getIsResultList());

    		request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
	}

}
