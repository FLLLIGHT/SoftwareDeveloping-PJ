package fudan.sd.project.dao;

import fudan.sd.project.entity.User;

import java.util.List;

public interface UserDAO {

    public List<User> getAll();

    public void save(User user);

    public void update(User user);

    public User get(int uid);

    public User get(String userName);

    public void delete(int uid);

    public long getCountWithName(String username);

    public void sendOrAcceptFriendInvitation(int uid1, int uid2);

    public List<Integer> findToUid(int uid);

    public List<Integer> findGetUid(int uid);
}
