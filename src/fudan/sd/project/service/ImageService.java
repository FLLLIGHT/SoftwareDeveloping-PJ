package fudan.sd.project.service;

import fudan.sd.project.dao.ImageDAO;
import fudan.sd.project.dao.ImageDAOJdbcImpl;
import fudan.sd.project.entity.Image;

import java.util.ArrayList;
import java.util.List;

public class ImageService {

    private ImageDAO imageDAO = new ImageDAOJdbcImpl();

    public List<Image> queryImages(String search, String select, String sort){
        if(select.equals("title") && sort.equals("heat")){
            return imageDAO.findImagesByTitleAndHeat(search);
        }
        if(select.equals("title") && sort.equals("time")){
            return imageDAO.findImagesByTitleAndTime(search);
        }
        if(select.equals("subject") && sort.equals("heat")){
            return imageDAO.findImagesBySubjectAndHeat(search);
        }
        if(select.equals("subject") && sort.equals("time")){
            return imageDAO.findImagesBySubjectAndTime(search);
        }
        return null;
    }

    public Image queryImageDetail(int imageId){
        return imageDAO.findImageById(imageId);
    }

    public void collectImage(int uid, int imageId){
        imageDAO.collect(uid, imageId);
    }

    public void saveImage(Image image){
        imageDAO.update(image);
    }

    public Image getImage(int imageId){
        return imageDAO.findImageById(imageId);
    }

    public List<Image> getCollectedImages(int uid){
        List<Integer> imageIds = imageDAO.findCollectedImageIdByUid(uid);
        List<Image> collectedImages = new ArrayList<>();
        for(int imageId : imageIds){
            collectedImages.add(imageDAO.findImageById(imageId));
        }
        return collectedImages;
    }
}
