package fudan.sd.project.dao;

import fudan.sd.project.entity.Image;

import java.util.List;

public interface ImageDAO {

    public void save(Image image);

    public Image findImageById(int uid);

    public List<Image> findImagesByTitleAndHeat(String search);

    public List<Image> findImagesBySubjectAndHeat(String search);

    public List<Image> findImagesByTitleAndTime(String search);

    public List<Image> findImagesBySubjectAndTime(String search);

}
