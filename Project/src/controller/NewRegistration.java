package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class NewRegistration
 */
@WebServlet("/NewRegistration")
public class NewRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("id");
		// 確認用：idをコンソールに出力
		System.out.println(Id);
		// TODO  未実装：idを引数にして、idに紐づくユーザ情報を出力する
		UserDao userDao = new UserDao();
		User user = userDao.findByID(Id);
		// TODO  未実装：ユーザ情報をリクエストスコープにセットしてjspにフォワード
		request.setAttribute("user",user);
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/NewRegistration.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータの入力項目を取得
		String loginId = request.getParameter("loginId");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String birthDate = request.getParameter("birthDate");
		// リクエストパラメータの入力項目を引数に渡して、Daoのメソッドを実行
		UserDao userDao = new UserDao();
		userDao.registration(loginId, name,password, birthDate);

		// ユーザ一覧のサーブレットにリダイレクト
		response.sendRedirect("UserListServlet");

	}

}
