package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.Detail_export_invoiceDto;
import shop.online_shoes.dto.Export_invoiceDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

    public List<Detail_export_invoiceDto> details (int id) throws Exception {
        List<Detail_export_invoiceDto> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT ct_hoadonxuat.id , ct_hoadonxuat.MaHDXuat, sanpham.TenGiay, ct_hoadonxuat.SoLuong, ct_hoadonxuat.Gia FROM `ct_hoadonxuat` LEFT JOIN sanpham on sanpham.MaGiay= ct_hoadonxuat.MaGiay WHERE MaHDXuat ="+id+"";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {
                Detail_export_invoiceDto detail_export_invoiceDto= new Detail_export_invoiceDto();
                detail_export_invoiceDto.setMahdxuat(resultSet.getInt("MaHDXuat"));
                detail_export_invoiceDto.setTengiay(resultSet.getString("sanpham.TenGiay"));
                detail_export_invoiceDto.setSoluong(resultSet.getInt("SoLuong"));
                detail_export_invoiceDto.setGia(resultSet.getInt("Gia"));

                list .add(detail_export_invoiceDto);

            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }
}
