package shop.online_shoes.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Export_invoiceDto {

    int mahdxuat;
    String ngayxuat;
    int userid;
    float tongtien;
    String fullname;
}
