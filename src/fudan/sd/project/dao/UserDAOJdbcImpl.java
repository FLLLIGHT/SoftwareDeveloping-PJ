package fudan.sd.project.dao;

import fudan.sd.project.entity.User;

import java.util.ArrayList;
import java.util.List;

public class UserDAOJdbcImpl extends DAO<User> implements UserDAO{

    @Override
    public List<User> getAll() {
        String sql = "SELECT uid, email, userName, pass, state, dateJoined, dateLastModified FROM traveluser";
        return getForList(sql);
    }

    @Override
    public void save(User user) {
        String sql = "INSERT INTO traveluser(email, userName, pass, state, dateJoined, dateLastModified) VALUES(?,?,?,?,?,?)";
        update(sql, user.getEmail(), user.getUserName(),user.getPass(), user.getState(), user.getDateJoined(), user.getDateLastModified());
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE traveluser SET email = ?, userName = ?, pass = ?, state = ?, dateJoined = ?, dateLastModified = ? WHERE uid = ?";
        update(sql, user.getEmail(), user.getUserName(), user.getPass(), user.getState(), user.getDateJoined(), user.getDateLastModified(), user.getUid());

    }

    @Override
    public User get(int uid) {
        String sql = "SELECT uid, email, userName, pass, state, dateJoined, dateLastModified FROM traveluser WHERE uid = ?";
        return get(sql, uid);
    }

    @Override
    public User get(String userName) {
        String sql = "SELECT uid, email, userName, pass, state, dateJoined, dateLastModified FROM traveluser WHERE userName = ?";
        return get(sql, userName);
    }

    @Override
    public void delete(int uid) {
        String sql = "DELETE FROM traveluser WHERE uid = ?";
        update(sql, uid);
    }

    @Override
    public long getCountWithName(String userName) {
        String sql = "SELECT count(id) FROM traveluser WHERE userName = ?";
        return getForValue(sql, userName);
    }

    @Override
    public void sendOrAcceptFriendInvitation(int uid1, int uid2) {
        String sql = "INSERT INTO traveluserfriend(uid1, uid2) VALUES(?,?)";
        update(sql, uid1, uid2);
    }

    @Override
    public List<Integer> findToUid(int uid) {
        String sql = "SELECT uid2 FROM traveluserfriend WHERE uid1 = ?";
        List<Object[]> objects = getForListWithInteger(sql, uid);
        List<Integer> uid2 = new ArrayList<>();
        for(Object[] object : objects){
            uid2.add((Integer) object[0]);
        }
        return uid2;
    }

    @Override
    public List<Integer> findGetUid(int uid) {
        String sql = "SELECT uid1 FROM traveluserfriend WHERE uid2 = ?";
        List<Object[]> objects = getForListWithInteger(sql, uid);
        List<Integer> uid1 = new ArrayList<>();
        for(Object[] object : objects){
            uid1.add((Integer) object[0]);
        }
        return uid1;
    }
}
