package fudan.sd.project.entity;

import java.util.Date;

public class Image {
    private int imageId;
    private String title;
    private String description;
    private int uid;
    private String path;
    private String content;
    private int heat;
    private Date dateJoined;
    private Date dateLastModified;
    private String country;
    private String city;
    private String author;

    public Image() {
        //constructor without parameter
    }

    public Image(String title, String description, int uid, String path, String content, int heat, Date dateJoined, Date dateLastModified, String country, String city, String author) {
        this.title = title;
        this.description = description;
        this.uid = uid;
        this.path = path;
        this.content = content;
        this.heat = heat;
        this.dateJoined = dateJoined;
        this.dateLastModified = dateLastModified;
        this.country = country;
        this.city = city;
        this.author = author;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getHeat() {
        return heat;
    }

    public void setHeat(int heat) {
        this.heat = heat;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "Image{" +
                "imageId=" + imageId +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", uid=" + uid +
                ", path='" + path + '\'' +
                ", content='" + content + '\'' +
                ", heat=" + heat +
                ", dateJoined=" + dateJoined +
                ", dateLastModified=" + dateLastModified +
                ", country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}
