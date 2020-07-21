package fudan.sd.project.dao;

import fudan.sd.project.entity.Image;

import java.util.List;

public class ImageDAOJdbcImpl extends DAO<Image> implements ImageDAO{

    @Override
    public void save(Image image) {
        String sql = "INSERT INTO travelimage(title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        update(sql, image.getTitle(), image.getDescription(), image.getUid(), image.getPath(), image.getContent(),
                image.getHeat(), image.getDateJoined(), image.getDateLastModified(), image.getCountry(), image.getCity(), image.getAuthor());
    }

    @Override
    public Image findImageById(int imageId) {
        String sql = "SELECT imageId, title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author FROM travelimage WHERE imageId = ?";
        return get(sql, imageId);
    }

    @Override
    public List<Image> findImagesByTitleAndHeat(String search) {
        String sql = "SELECT imageId, title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author FROM travelimage WHERE title LIKE ? ORDER BY heat DESC";
        return getForList(sql, search == null ? "%%" : "%" + search + "%");
    }

    @Override
    public List<Image> findImagesBySubjectAndHeat(String search) {
        String sql = "SELECT imageId, title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author FROM travelimage WHERE content LIKE ? ORDER BY heat DESC";
        return getForList(sql, search == null ? "%%" : "%" + search + "%");
    }

    @Override
    public List<Image> findImagesByTitleAndTime(String search) {
        String sql = "SELECT imageId, title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author FROM travelimage WHERE title LIKE ? ORDER BY dateLastModified DESC";
        return getForList(sql, search == null ? "%%" : "%" + search + "%");
    }

    @Override
    public List<Image> findImagesBySubjectAndTime(String search) {
        String sql = "SELECT imageId, title, description, uid, path, content, heat, dateJoined, dateLastModified, country, city, author FROM travelimage WHERE content LIKE ? ORDER BY dateLastModified DESC";
        return getForList(sql, search == null ? "%%" : "%" + search + "%");
    }
}
