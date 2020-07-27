package fudan.sd.project.dao;

import fudan.sd.project.entity.Post;

import java.util.List;

public class PostDAOJdbcImpl extends DAO<Post> implements PostDAO{

    @Override
    public void save(Post post) {
        String sql = "INSERT INTO travelpost(post, userName, dateJoined, dateLastModified, heat, imageId) VALUES(?,?,?,?,?,?)";
        update(sql, post.getPost(), post.getUserName(), post.getDateJoined(), post.getDateLastModified(), post.getHeat(), post.getImageId());
    }

    @Override
    public void update(Post post) {
        String sql = "UPDATE travelpost SET heat = ? WHERE postId = ?";
        update(sql, post.getHeat(), post.getPostId());
    }

    @Override
    public Post get(int postId) {
        String sql = "SELECT postId, post, userName, dateJoined, dateLastModified, heat, imageId FROM travelpost WHERE postId = ?";
        return get(sql, postId);
    }

    @Override
    public List<Post> getPostsByImageIdAndHeat(int imageId) {
        String sql = "SELECT postId, post, userName, dateJoined, dateLastModified, heat, imageId FROM travelpost WHERE imageId = ? ORDER BY heat DESC";
        return getForList(sql, imageId);
    }

    @Override
    public List<Post> getPostsByImageIdAndTime(int imageId) {
        String sql = "SELECT postId, post, userName, dateJoined, dateLastModified, heat, imageId FROM travelpost WHERE imageId = ? ORDER BY dateLastModified DESC";
        return getForList(sql, imageId);
    }
}
