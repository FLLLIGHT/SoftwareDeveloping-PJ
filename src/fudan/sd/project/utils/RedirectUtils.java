package fudan.sd.project.utils;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RedirectUtils {

    public static void redirect(HttpServletRequest request, HttpServletResponse response, String redirectUrl){

        try{
            //如果是Ajax请求
            if("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))){
                sendRedirect(response,redirectUrl);
            }
            //如果是浏览器地址栏请求
            else {
                response.sendRedirect(redirectUrl);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }

    }

    private static void sendRedirect(HttpServletResponse response, String redirectUrl){
        try {
            //设置跳转地址
            response.setHeader("redirectUrl", redirectUrl);
            response.setHeader("enableRedirect","true");
            response.flushBuffer();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
