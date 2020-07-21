package fudan.sd.project.dao;

import fudan.sd.project.entity.User;

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
}
