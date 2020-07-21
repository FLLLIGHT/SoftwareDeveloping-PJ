package fudan.sd.project.controller;

import fudan.sd.project.dao.UserDAO;
import fudan.sd.project.dao.UserDAOJdbcImpl;
import fudan.sd.project.entity.User;
import fudan.sd.project.service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Date;

public class AccountServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserDAO userDAO = new UserDAOJdbcImpl();
    private AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String requestURI = request.getRequestURI();
        String methodName = requestURI.substring(requestURI.lastIndexOf("/") + 1);

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

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("userName");
        String pass = request.getParameter("pass");
        User user = accountService.checkUser(userName, pass);
        //todo: 提示登录成功或登录失败
        //todo: 数据传输加密
        if(user == null){
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
            return;
        }
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/index.jsp");
    }


}
