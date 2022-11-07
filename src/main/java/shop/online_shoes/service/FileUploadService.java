package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class FileUploadService {

    public  void uploadfile(MultipartFile file) throws IOException {
        file.transferTo(new File("E:\\Online_Shoes\\Online_Shoes\\src\\main\\resources\\static\\assets\\frontend\\img\\" + file.getOriginalFilename()));
    }
}
