package fudan.sd.project.entity;

import java.util.Date;

public class Post {

    int postId;
    String post;
    String userName;
    Date dateJoined;
    Date dateLastModified;
    int heat;
    int imageId;
    String tip;

    public Post() {
        //constructor without para
    }

    public Post(String post, String userName, Date dateJoined, Date dateLastModified, int heat, int imageId) {
        this.post = post;
        this.userName = userName;
        this.dateJoined = dateJoined;
        this.dateLastModified = dateLastModified;
        this.heat = heat;
        this.imageId = imageId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getDateJoined() {
        return dateJoined;
    }

    public void setDateJoined(Date dateJoined) {
        this.dateJoined = dateJoined;
    }

    public Date getDateLastModified() {
        return dateLastModified;
    }

    public void setDateLastModified(Date dateLastModified) {
        this.dateLastModified = dateLastModified;
    }

    public int getHeat() {
        return heat;
    }

    public void setHeat(int heat) {
        this.heat = heat;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }
}
