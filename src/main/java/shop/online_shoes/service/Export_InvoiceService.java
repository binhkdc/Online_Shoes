package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.Export_invoiceDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Service
public class Export_InvoiceService {
    public List<Export_invoiceDto> list () throws Exception {
        List<Export_invoiceDto> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT `MaHDXuat`, `NgayXuat`, user.FULL_NAME , `TongTien` FROM `hoadonxuat` JOIN user on user.ID=hoadonxuat.UserID;";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {
                Export_invoiceDto export_invoiceDto= new Export_invoiceDto();
                export_invoiceDto.setMahdxuat(resultSet.getInt("MaHDXuat"));
                export_invoiceDto.setNgayxuat(resultSet.getString("NgayXuat"));
                export_invoiceDto.setFullname(resultSet.getString("user.FULL_NAME"));
                export_invoiceDto.setTongtien(resultSet.getInt("TongTien"));

                list .add(export_invoiceDto);

            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }
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
