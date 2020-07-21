package fudan.sd.project.entity;

import java.util.Date;

public class User {
    //todo:id是不是要大写
    private int uid;
    private String email;
    private String userName;
    private String pass;
    int state;
    Date dateJoined;
    Date dateLastModified;

    public User() {
        //constructor without parameter
    }

    public User(String email, String userName, String pass, int state, Date dateJoined, Date dateLastModified) {
        this.email = email;
        this.userName = userName;
        this.pass = pass;
        this.state = state;
        this.dateJoined = dateJoined;
        this.dateLastModified = dateLastModified;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
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
}
