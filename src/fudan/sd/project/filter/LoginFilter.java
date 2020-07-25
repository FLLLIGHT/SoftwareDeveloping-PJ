package fudan.sd.project.filter;

import fudan.sd.project.entity.User;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String requestURI = request.getRequestURI();
        System.out.println("URI: "+requestURI);
        if(requestURI.contains("authority")){
            Object user = request.getSession().getAttribute("user");
            if(user == null){
                response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/account/jumpToLogin");
                return;
            }
        }

        chain.doFilter(request, response);
    }

}
