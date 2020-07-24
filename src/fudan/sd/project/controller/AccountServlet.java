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

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("pass");
        User user = new User(email, userName, password, 1, new Date(), new Date());

        //todo: 用户名重复的提示
        if(!accountService.isRepeated(userName)) {
            accountService.doRegister(user);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
        }else{
            request.setAttribute("message", "userNameRepeated");
            request.getRequestDispatcher("/jsp/register.jsp").forward(request, response);
            return;
        }

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/index.jsp");
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("userName");
        String pass = request.getParameter("pass");
        User user = accountService.checkUser(userName, pass);
        //todo: 提示登录成功或登录失败
        //todo: 数据传输加密
        if(user == null){
            request.setAttribute("loginStatus", "false");
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
            return;
        }
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        Object pageBeforeLogin = session.getAttribute("pageBeforeLogin");
        request.setAttribute("loginStatus", "true");

        if(pageBeforeLogin!=null){
            String page = pageBeforeLogin.toString();
            request.setAttribute("pageBeforeLogin", "/SoftwareDeveloping_PJ_war_exploded"+page);
            session.removeAttribute("pageBeforeLogin");
            request.getRequestDispatcher(page).forward(request, response);
        }else {
            request.setAttribute("pageBeforeLogin", "/SoftwareDeveloping_PJ_war_exploded/index.jsp");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    public void jumpToLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String pageBeforeLogin = request.getHeader("Referer");
        pageBeforeLogin = pageBeforeLogin.substring(pageBeforeLogin.indexOf("/SoftwareDeveloping_PJ_war_exploded")+35);
        HttpSession session = request.getSession();
        session.setAttribute("pageBeforeLogin", pageBeforeLogin);
        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/jsp/login.jsp");
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        String page = request.getHeader("Referer");
        page = page.substring(page.indexOf("/SoftwareDeveloping_PJ_war_exploded"));
        response.sendRedirect(page);
    }


}
