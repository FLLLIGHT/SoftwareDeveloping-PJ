package fudan.sd.project.service;

import fudan.sd.project.dao.UserDAO;
import fudan.sd.project.dao.UserDAOJdbcImpl;
import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.User;

import java.util.ArrayList;
import java.util.List;

public class FriendService {

    private UserDAO userDAO = new UserDAOJdbcImpl();

    public User getUser(String userName){
        return userDAO.get(userName);
    }

    public void sendFriendInvitation(int uid1, int uid2){
        userDAO.sendOrAcceptFriendInvitation(uid1, uid2);
    }

    public List<User> getFriends(int uid){
        List<Integer> uid1 = userDAO.findGetUid(uid);
        List<Integer> uid2 = userDAO.findToUid(uid);
        List<User> friends = new ArrayList<>();
        for(int uidGet : uid1){
            for(int uidTo : uid2){
                if(uidTo == uidGet){
                    friends.add(userDAO.get(uidTo));
                }
            }
        }
        return friends;
    }

    public List<User> getFriendInvitations(int uid){
        List<Integer> uid1 = userDAO.findGetUid(uid);
        List<Integer> uid2 = userDAO.findToUid(uid);
        List<User> friendInvitation = new ArrayList<>();
        boolean accepted = false;
        for(int uidGet : uid1){
            for(int uidTo : uid2){
                if(uidTo == uidGet){
                    accepted = true;
                    break;
                }
            }
            if(!accepted){
                friendInvitation.add(userDAO.get(uidGet));
                accepted = false;
            }
        }
        return friendInvitation;
    }
}
