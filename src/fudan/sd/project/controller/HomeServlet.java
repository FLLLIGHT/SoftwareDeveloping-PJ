package fudan.sd.project.controller;

import fudan.sd.project.entity.Image;
import fudan.sd.project.service.ImageService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class HomeServlet extends HttpServlet {

    ImageService imageService = new ImageService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("HOME");
        List<Image> hottestImages = new ArrayList<>();
        hottestImages = imageService.queryImages("", "title", "heat");
        List<Image> latestImages = new ArrayList<>();
        latestImages = imageService.queryImages("", "title", "time");
        hottestImages = imageService.limited3Images(hottestImages);
        latestImages = imageService.limited3Images(latestImages);

        request.setAttribute("hottestImages", hottestImages);
        request.setAttribute("latestImages", latestImages);

        request.getRequestDispatcher("/jsp/home.jsp").forward(request, response);

    }
}
