package servlet;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ConnectSpeechQuizDatabase;
import model.Result;

@WebServlet("/QuizResult")
public class QuizResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		request.setCharacterEncoding("UTF-8");
    		HttpSession session = request.getSession(true);
    		Result result=null;
    		try {
    			result = model.Result.builder().user_id(UUID.randomUUID().toString())
    			.ans1(Integer.parseInt(request.getParameter("ans1")))
    			.ans2(Integer.parseInt(request.getParameter("ans2")))
    			.ans3(Integer.parseInt(request.getParameter("ans3")))
    			.ans4(Integer.parseInt(request.getParameter("ans4")))
    			.ans5(Integer.parseInt(request.getParameter("ans5")))
    			.ans6(Integer.parseInt(request.getParameter("ans6")))
    					.build();
    			session.setAttribute("result", result);
    		}catch(NumberFormatException e) {
    			request.setAttribute("ansError", model.ResultError.builder().quizResultError("error").build());
    			RequestDispatcher dispatcher =
    					request.getRequestDispatcher("quiz.jsp");
    			dispatcher.forward(request, response);
    		}
    		ConnectSpeechQuizDatabase database = new ConnectSpeechQuizDatabase();
    		if(database.toInsertData(result)) {
    			System.out.println("結果をデータベースに登録できました。");
    		}else {
    			System.out.println("結果をデータベースに登録できていません。");
    		}

    		RequestDispatcher dispatcher =
					request.getRequestDispatcher("QuizResultCompare");
			dispatcher.forward(request, response);
    	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
