package shop.online_shoes.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDto {
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
}
