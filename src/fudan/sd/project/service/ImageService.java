package fudan.sd.project.service;

import fudan.sd.project.dao.ImageDAO;
import fudan.sd.project.dao.ImageDAOJdbcImpl;
import fudan.sd.project.entity.Image;
import fudan.sd.project.entity.Page;
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
        String fileName = null;
        for(FileItem item : items){
            if(!item.isFormField()&&!item.getName().equals("")){
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
        int imageId = -1;

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
                    case "imageId":
                        imageId = Integer.parseInt(item.getString());
                        break;
                }
            }
        }

        if(imageId != -1){
            System.out.println("update");
            Image oldImage = getImage(imageId);
            heat = oldImage.getHeat();
            dateJoined = oldImage.getDateJoined();
            //若fileName为null，说明没有更新图片文件，所以不用更新path，取oldPath；若不是null，则说明更新了图片，取新path
            fileName = (fileName == null ? oldImage.getPath() : fileName);
            Image image = new Image(title, description, uid, fileName, content, heat, dateJoined, dateLastModified, country, city, author);
            image.setImageId(oldImage.getImageId());
            imageDAO.update(image);
        }else{
            System.out.println("save");
            Image image = new Image(title, description, uid, fileName, content, heat, dateJoined, dateLastModified, country, city, author);
            imageDAO.save(image);
        }

    }

    public List<Image> getUploadedImages(int uid){
        return imageDAO.findUploadedImagesByUid(uid);
    }

    public void removeUploadedImage(int imageId){
        imageDAO.delete(imageId);
    }

    public List<Image> parseDate(List<Image> images){
        for(Image image : images){
            image.setTip(image.getDateLastModified().toString());
        }
        return images;
    }

    public List<Image> getLimitedImages(List<Image> oldImages, Page page){
        List<Image> newImages = new ArrayList<>();
        for(int i=(page.getPageNo()-1)*page.getPageSize(); i<page.getPageNo()*page.getPageSize()&&i<oldImages.size(); i++){
            newImages.add(oldImages.get(i));
        }
        return newImages;
    }
}
