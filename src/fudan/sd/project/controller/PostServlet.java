package fudan.sd.project.controller;

import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.Page;
import fudan.sd.project.entity.Post;
import fudan.sd.project.entity.User;
import fudan.sd.project.service.PostService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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

public class PostServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    PostService postService = new PostService();

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

    private void submitPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String postContent = request.getParameter("post");
        int imageId = Integer.parseInt(request.getParameter("imageId"));
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        String userName = user.getUserName();

        postService.savePostInfo(postContent, imageId, userName);

        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId="+imageId);
    }

    private void likePost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int postId = Integer.parseInt(request.getParameter("postId"));
        postService.likePost(postId);
        Map<String, Object> map = new HashMap<String, Object>(1);
        map.put("message", "success");
        JSONObject strMapJson = JSONObject.fromObject(map);

        response.getWriter().print(strMapJson);

    }

    private void ajaxQueryPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int imageId = Integer.parseInt(request.getParameter("imageId"));
        String sort = request.getParameter("sort");
        List<Post> posts = postService.queryPosts(imageId, sort);
        posts = postService.parseDate(posts);

        Map<String, Object> map = new HashMap<String, Object>(2);
        map.put("data", JSONArray.fromObject(posts));
        map.put("imageId", imageId);
        System.out.println(posts);

        JSONObject strMapJson = JSONObject.fromObject(map);

        response.getWriter().print(strMapJson);
    }


}
