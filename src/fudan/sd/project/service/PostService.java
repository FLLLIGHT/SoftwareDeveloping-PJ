package fudan.sd.project.service;

import fudan.sd.project.dao.PostDAO;
import fudan.sd.project.dao.PostDAOJdbcImpl;
import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.Post;

import java.util.Date;
import java.util.List;

public class PostService {

    private PostDAO postDAO = new PostDAOJdbcImpl();

    public void savePostInfo(String postContent, int imageId, String userName){
        Post post = new Post(postContent, userName, new Date(), new Date(), 0, imageId);
        postDAO.save(post);
    }

    public void likePost(int postId){
        Post post = postDAO.get(postId);
        post.setHeat(post.getHeat()+1);
        postDAO.update(post);
    }

    public List<Post> queryPosts(int imageId, String sort){
        if(sort.equals("time")){
            System.out.println("time");
            return postDAO.getPostsByImageIdAndTime(imageId);
        }
        if(sort.equals("heat")){
            return postDAO.getPostsByImageIdAndHeat(imageId);
        }
        return null;

    }

    public List<Post> parseDate(List<Post> posts){
        for(Post post : posts){
            String date = post.getDateLastModified().toString();
            post.setTip(date.substring(0, date.lastIndexOf(".")));
        }
        return posts;
    }
}
