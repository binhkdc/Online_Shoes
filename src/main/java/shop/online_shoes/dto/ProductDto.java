package shop.online_shoes.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto implements Serializable {

    int magiay;
    String tengiay;
    Long mansx;
    int soluong;
    String size;
    String mausac;
    float gia;
    String hinhanh;
    String mota;
    Long maloaigiay;
    MultipartFile fileImage;
    int updateSoluong;
}
