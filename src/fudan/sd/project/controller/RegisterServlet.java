package fudan.sd.project.controller;

import fudan.sd.project.dao.UserDAO;
import fudan.sd.project.dao.UserDAOJdbcImpl;
import fudan.sd.project.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserDAO userDAO = new UserDAOJdbcImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("pass");
        User user = new User(email, userName, password, 1, new Date(), new Date());

        userDAO.save(user);

        response.sendRedirect("index.jsp");
    }
}
