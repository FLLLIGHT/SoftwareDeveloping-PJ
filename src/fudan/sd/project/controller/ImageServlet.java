package fudan.sd.project.controller;

import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.Page;
import fudan.sd.project.entity.User;
import fudan.sd.project.service.AccountService;
import fudan.sd.project.service.FriendService;
import fudan.sd.project.service.ImageService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ImageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ImageService imageService = new ImageService();
    private FriendService friendService = new FriendService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String requestURI = request.getRequestURI();
        String methodName = requestURI.substring(requestURI.lastIndexOf("/") + 1);
        System.out.println("method name: "+methodName);

        try {
            Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    private void queryImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String search = request.getParameter("search");
//        String select = request.getParameter("select");
//        String sort = request.getParameter("sort");
//        List<Image> images = imageService.queryImages(search, select, sort);
//
//        request.setAttribute("images", images);
//
//        request.getRequestDispatcher("/jsp/search.jsp").forward(request, response);
//    }

    private void ajaxQueryImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String search = request.getParameter("search");
        String select = request.getParameter("select");
        String sort = request.getParameter("sort");
        List<Image> images = imageService.queryImages(search, select, sort);

        int pageNo = Integer.parseInt(request.getParameter("page"));
        int pageSize = 6;
        int totalPages = (images.size()-1) / pageSize + 1;

        Page page = new Page(pageNo, totalPages, pageSize);

        images = imageService.getLimitedImages(images, page);
        images = imageService.parseDate(images);

        Map<String, Object> map = new HashMap<String, Object>(2);
        map.put("page", JSONObject.fromObject(page));
        map.put("data", JSONArray.fromObject(images));
        map.put("search", search);
        map.put("sort", sort);
        map.put("select", select);
        JSONObject strMapJson = JSONObject.fromObject(map);
//        System.out.println(strMapJson);

        response.getWriter().print(strMapJson);
    }

    private void queryImageDetail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        int imageId = Integer.parseInt(request.getParameter("imageId"));

        Image image = imageService.queryImageDetail(imageId);
        request.setAttribute("image", image);

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if(user!=null) {
            int uid = user.getUid();
            boolean isCollected = imageService.isCollected(uid, imageId);
            request.setAttribute("isCollected", isCollected);
        }

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

    private void removeCollectedImage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int imageId = Integer.parseInt(request.getParameter("imageId"));

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        imageService.removeCollectedImage(uid, imageId);

        Image image = imageService.getImage(imageId);
        image.setHeat(image.getHeat()-1);
        imageService.saveImage(image);

        Map<String, Object> map = new HashMap<String, Object>(1);
        map.put("uid", uid);
        JSONObject strMapJson = JSONObject.fromObject(map);
        response.getWriter().print(strMapJson);

//        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/jsp/collection.jsp");
    }

    private void queryCollectedImages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        //展示好友收藏
        if(request.getParameter("friendId")!=null){
            uid = Integer.parseInt(request.getParameter("friendId"));
            User friend = friendService.getUser(uid);
            request.setAttribute("owner", friend);
        }else{
            request.setAttribute("owner", user);
        }
//        request.setAttribute("collectedImages", imageService.getCollectedImages(uid));

        request.getRequestDispatcher("/jsp/collection.jsp").forward(request, response);
    }

    private void ajaxQueryCollectedImages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int uid = Integer.parseInt(request.getParameter("uid"));
        List<Image> images = imageService.getCollectedImages(uid);

        int pageNo = Integer.parseInt(request.getParameter("page"));
        int pageSize = 6;
        int totalPages = (images.size()-1) / pageSize + 1;

        Page page = new Page(pageNo, totalPages, pageSize);

        images = imageService.getLimitedImages(images, page);
        images = imageService.parseDate(images);

        Map<String, Object> map = new HashMap<String, Object>(2);
        map.put("page", JSONObject.fromObject(page));
        map.put("data", JSONArray.fromObject(images));
        map.put("uid", uid);
        JSONObject strMapJson = JSONObject.fromObject(map);
//        System.out.println(strMapJson);

        response.getWriter().print(strMapJson);

    }

    private void uploadImage(HttpServletRequest request, HttpServletResponse response) throws FileUploadException, IOException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        //当前web应用的路径
        ServletContext servletContext = session.getServletContext();
        String prefix = servletContext.getRealPath("/") + "images/";

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);

        String fileName = imageService.uploadImage(items, prefix);
        //todo: 预显示已上传的图片
        imageService.saveImageInfo(items, uid, fileName);

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/index.jsp");
    }

    private void queryUploadedImages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/jsp/profile.jsp");
    }

    private void ajaxQueryUploadedImages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();
        List<Image> images = imageService.getUploadedImages(uid);

        int pageNo = Integer.parseInt(request.getParameter("page"));
        int pageSize = 6;
        int totalPages = (images.size()-1) / pageSize + 1;

        Page page = new Page(pageNo, totalPages, pageSize);

        images = imageService.getLimitedImages(images, page);
        images = imageService.parseDate(images);

        Map<String, Object> map = new HashMap<String, Object>(2);
        map.put("page", JSONObject.fromObject(page));
        map.put("data", JSONArray.fromObject(images));
        JSONObject strMapJson = JSONObject.fromObject(map);
//        System.out.println(strMapJson);

        response.getWriter().print(strMapJson);
    }

    private void jumpToEditUploadedImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //todo:验证修改者身份

        int imageId = Integer.parseInt(request.getParameter("imageId"));

        Image image = imageService.queryImageDetail(imageId);
        request.setAttribute("image", image);

        request.getRequestDispatcher("/jsp/upload.jsp").forward(request, response);

    }

    private void removeUploadedImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int imageId = Integer.parseInt(request.getParameter("imageId"));
        imageService.removeUploadedImage(imageId);

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/jsp/profile.jsp");
    }
}
