package fudan.sd.project.service;

import fudan.sd.project.dao.ImageDAO;
import fudan.sd.project.dao.ImageDAOJdbcImpl;
import fudan.sd.project.entity.Image;
import org.apache.commons.fileupload.FileItem;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
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

    public void removeCollectedImage(int uid, int imageId){
        imageDAO.removeCollected(uid, imageId);
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

    public boolean isCollected(int uid, int imageId){
        List<Integer> imageIds = imageDAO.findCollectedImageIdByUid(uid);
        for(int imageIdToTest : imageIds){
            if(imageIdToTest == imageId){
                return true;
            }
        }
        return false;
    }

    public String uploadImage(List<FileItem> items, String prefix){
        String fileName = "";
        for(FileItem item : items){
            if(!item.isFormField()){
                fileName = item.getName();
                fileName = System.currentTimeMillis() + fileName;

//                //todo: 绝对路径前缀改为服务器对应路径
//                String prefix = "/usr/local/";
                String filePath = prefix + fileName;

                try(InputStream inputStream = item.getInputStream();
                    OutputStream outputStream = new FileOutputStream(filePath)){
                    int len = 0;
                    byte[] buffer = new byte[1024];
                    while((len = inputStream.read(buffer)) != -1){
                        outputStream.write(buffer, 0, len);
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
        return fileName;
    }

    public void saveImageInfo(List<FileItem> items, int uid, String fileName) {
        String title = "";
        String description = "";
        String content = "";
        int heat = 0;
        Date dateJoined = new Date();
        Date dateLastModified = new Date();
        String country = "";
        String city = "";
        String author = "";
        for (FileItem item : items) {
            if (item.isFormField()) {
                switch (item.getFieldName()) {
                    case "title":
                        title = item.getString();
                        break;
                    case "description":
                        description = item.getString();
                        break;
                    case "subject":
                        content = item.getString();
                        break;
                    case "country":
                        country = item.getString();
                        break;
                    case "city":
                        city = item.getString();
                        break;
                    case "author":
                        author = item.getString();
                        break;
                }
            }
        }
        Image image = new Image(title, description, uid, fileName, content, heat, dateJoined, dateLastModified, country, city, author);
        imageDAO.save(image);
    }

    public List<Image> getUploadedImages(int uid){
        return imageDAO.findUploadedImagesByUid(uid);
    }
}
