package fudan.sd.project.dao;

import fudan.sd.project.entity.Post;
import java.util.List;

public interface PostDAO {

    public void save(Post post);

    public void update(Post post);

    public Post get(int postId);

    public List<Post> getPostsByImageIdAndHeat(int imageId);

    public List<Post> getPostsByImageIdAndTime(int imageId);

}
