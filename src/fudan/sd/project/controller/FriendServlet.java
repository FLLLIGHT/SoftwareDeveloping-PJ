package fudan.sd.project.controller;

import fudan.sd.project.entity.User;
import fudan.sd.project.service.AccountService;
import fudan.sd.project.service.FriendService;
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

public class FriendServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private FriendService friendService = new FriendService();

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

    private void jumpToFriendPage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid = user.getUid();

        List<User> friends = friendService.getFriends(uid);
        List<User> friendInvitations = friendService.getFriendInvitations(uid);

        request.setAttribute("friends", friends);
        request.setAttribute("friendInvitations", friendInvitations);

        request.getRequestDispatcher("/jsp/friend.jsp").forward(request, response);

    }

    private void searchUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("search");
        User user = friendService.getUser(userName);

        Map<String, Object> map = new HashMap<String, Object>(4);
        if(user==null){
            map.put("found", "false");
        }else {
            map.put("found", "true");
            map.put("username", user.getUserName());
            map.put("email", user.getEmail());
            map.put("uid", user.getUid());
        }

        JSONObject strMapJson = JSONObject.fromObject(map);
        response.getWriter().print(strMapJson);

//        request.setAttribute("userFound", user);
//        request.getRequestDispatcher("/jsp/friend.jsp").forward(request, response);
    }

    private void sendOrAcceptFriendInvitation(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        int uid1 = user.getUid();
        int uid2 = Integer.parseInt(request.getParameter("uid2"));
        friendService.sendFriendInvitation(uid1, uid2);
        response.sendRedirect("/SoftwareDeveloping_PJ_war_exploded/friend/authority/jumpToFriendPage");
    }
}
