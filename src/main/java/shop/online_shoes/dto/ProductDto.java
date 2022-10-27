package shop.online_shoes.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
public class ProductDto {

    Long magiay;
    String tengiay;
    long mansx;
    String soluong;
    String size;
    String mausac;
    String gia;
    String hinhanh;
    String mota;
    Long maloaigiay;
    MultipartFile fileImage;
}
