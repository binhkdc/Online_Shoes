package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.Detail_export_invoiceDto;
import shop.online_shoes.dto.Export_invoiceDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.Statement;

@Service
public class Detail_export_invoiceService {
    public void save(Detail_export_invoiceDto detail_export_invoiceDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "INSERT INTO `ct_hoadonxuat`(`MaHDXuat`, `MaGiay`, `SoLuong`, `Gia`) VALUES ("+detail_export_invoiceDto.getMahdxuat()+","+detail_export_invoiceDto.getMagiay()+","+detail_export_invoiceDto.getSoluong()+","+detail_export_invoiceDto.getGia()+")";

            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }
}
