package fudan.sd.project.controller;

import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.User;
import fudan.sd.project.service.ImageService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

public class ImageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ImageService imageService = new ImageService();

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

    private void queryImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        String select = request.getParameter("select");
        String sort = request.getParameter("sort");

        System.out.println(select);
        System.out.println(sort);

        List<Image> images = imageService.queryImages(search, select, sort);

        request.setAttribute("images", images);

        request.getRequestDispatcher("/jsp/search.jsp").forward(request, response);
    }

    private void queryImageDetail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int imageId = Integer.parseInt(request.getParameter("imageId"));

        Image image = imageService.queryImageDetail(imageId);
        request.setAttribute("image", image);

        request.getRequestDispatcher("/jsp/detail.jsp").forward(request, response);
    }

    private void collectImage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int imageId = Integer.parseInt(request.getParameter("imageId"));

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        imageService.collectImage(uid, imageId);

        Image image = imageService.getImage(imageId);
        image.setHeat(image.getHeat()+1);
        imageService.saveImage(image);

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/index.jsp");

    }
}
