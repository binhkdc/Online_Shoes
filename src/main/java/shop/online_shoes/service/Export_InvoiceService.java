package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.Export_invoiceDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Service
public class Export_InvoiceService {
    public void save(Export_invoiceDto export_invoiceDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "INSERT INTO `hoadonxuat`( `NgayXuat`, `UserID`, `TongTien`) VALUES ('"+export_invoiceDto.getNgayxuat()+"',"+export_invoiceDto.getUserid()+","+export_invoiceDto.getTongtien()+")";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }

    public List<Integer> lastInsert() throws Exception {
        List<Integer> list= new ArrayList<>();
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "SELECT MAX(MaHDXuat) as lastInsert FROM hoadonxuat;";
            // Bước 4; Run kết quả
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                list.add(resultSet.getInt("lastInsert"));
            }
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
        return list;
    }

}
