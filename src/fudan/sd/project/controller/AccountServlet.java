package fudan.sd.project.controller;

import fudan.sd.project.dao.UserDAO;
import fudan.sd.project.dao.UserDAOJdbcImpl;
import fudan.sd.project.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Date;

public class AccountServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserDAO userDAO = new UserDAOJdbcImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String requestURI = request.getRequestURI();
        System.out.println(requestURI);
        String methodName = requestURI.substring(requestURI.lastIndexOf("/") + 1);
        System.out.println(methodName);

        try {
            Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("pass");
        User user = new User(email, userName, password, 1, new Date(), new Date());

        userDAO.save(user);

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/index.jsp");
    }


}
