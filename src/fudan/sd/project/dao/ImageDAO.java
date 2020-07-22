package fudan.sd.project.dao;

import fudan.sd.project.entity.Image;

import java.util.List;

public interface ImageDAO {

    public void save(Image image);

    public void update(Image image);

    public void delete(int imageId);

    public Image findImageById(int imageId);

    public List<Image> findUploadedImagesByUid(int uid);

    public List<Image> findImagesByTitleAndHeat(String search);

    public List<Image> findImagesBySubjectAndHeat(String search);

    public List<Image> findImagesByTitleAndTime(String search);

    public List<Image> findImagesBySubjectAndTime(String search);

    public void collect(int uid, int imageId);

    public void removeCollected(int uid, int imageId);

    public List<Integer> findCollectedImageIdByUid(int uid);
}
