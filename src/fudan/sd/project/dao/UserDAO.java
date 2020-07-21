package fudan.sd.project.dao;

import fudan.sd.project.entity.User;

import java.util.List;

public interface UserDAO {

    public List<User> getAll();

    public void save(User user);

    public User get(int uid);

    public User get(String userName);

    public void delete(int uid);

    public long getCountWithName(String username);
}
