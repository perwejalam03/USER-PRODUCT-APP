package org.jsp.userproductapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/delete")
public class DeleteUserServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User u = (User)session.getAttribute("user");
		if (u != null) {
			UserDao dao = new UserDao();
			int id = u.getId();
			dao.deleteUser(id);
			session.invalidate();
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			req.setAttribute("msg", "Your Account is deleted");
			dispatcher.forward(req, resp);
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}
