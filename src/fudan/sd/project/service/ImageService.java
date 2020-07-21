package fudan.sd.project.service;

import fudan.sd.project.dao.ImageDAO;
import fudan.sd.project.dao.ImageDAOJdbcImpl;
import fudan.sd.project.entity.Image;

import java.util.List;

public class ImageService {

    private ImageDAO imageDAO = new ImageDAOJdbcImpl();

    public List<Image> queryImage(String search, String select, String sort){
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
}
