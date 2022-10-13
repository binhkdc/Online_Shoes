package shop.online_shoes.service;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import shop.online_shoes.dto.ProducerDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.entities.UserEntity;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ProductService {
    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT `MaGiay`, `TenGiay`, nhasanxuat.TenNSX, `SoLuong`, `Size`, `MauSac`, `Gia`, `HinhAnh`, `MoTa`, loaigiay.LoaiGiay FROM `sanpham` JOIN nhasanxuat on nhasanxuat.MaNSX = sanpham.MaNSX JOIN loaigiay on loaigiay.MaLoaiGiay = sanpham.MaLoaiGiay";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();

                row.put("magiay", resultSet.getString("MaGiay")) ;
                row.put("tengiay",       resultSet.getString("TenGiay")) ;
                row.put("mansx",   resultSet.getString("nhasanxuat.TenNSX")) ;
                row.put("soluong", resultSet.getString("SoLuong")) ;
                row.put("size",       resultSet.getString("Size")) ;
                row.put("mausac",       resultSet.getString("MauSac")) ;
                row.put("gia",   resultSet.getString("Gia")) ;
                row.put("hinhanh", resultSet.getString("HinhAnh")) ;
                row.put("mota",       resultSet.getString("MoTa")) ;
                row.put("maloaigiay",       resultSet.getString("loaigiay.LoaiGiay")) ;
                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public List<HashMap<String, String>> details (String id) throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT * FROM `sanpham` where `MaGiay`= "+id+" ";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();

                row.put("magiay", resultSet.getString("MaGiay")) ;
                row.put("tengiay",       resultSet.getString("TenGiay")) ;
                row.put("mansx",   resultSet.getString("MaNsx")) ;
                row.put("soluong", resultSet.getString("SoLuong")) ;
                row.put("size",       resultSet.getString("Size")) ;
                row.put("mausac",       resultSet.getString("MauSac")) ;
                row.put("gia",   resultSet.getString("Gia")) ;
                row.put("hinhanh", resultSet.getString("HinhAnh")) ;
                row.put("mota",       resultSet.getString("MoTa")) ;
                row.put("maloaigiay",       resultSet.getString("MaLoaiGiay")) ;
                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void save(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "INSERT INTO `sanpham`(`TenGiay`, `MaNSX`, `SoLuong`, `Size`, `MauSac`, `Gia`, `HinhAnh`, `MoTa`, `MaLoaiGiay`)" +
                    " VALUES ('"+productDto.getTengiay()+"','"+productDto.getMansx()+"','"+productDto.getSoluong()+"','"+productDto.getSize()+"','"+productDto.getMausac()+"','"+productDto.getGia()+"','"+productDto.getHinhanh()+"','"+productDto.getMota()+"','"+productDto.getMaloaigiay()+"')";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }

    public void update(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "UPDATE `sanpham` SET `TenGiay`='"+productDto.getTengiay()+"',`MaNSX`="+productDto.getMansx()+",`SoLuong`='"+productDto.getSoluong()+"',`Size`='"+productDto.getSize()+"',`MauSac`='"+productDto.getMausac()+"',`Gia`='"+productDto.getGia()+"',`HinhAnh`='"+productDto.getHinhanh()+"',`MoTa`='"+productDto.getMota()+"',`MaLoaiGiay`="+productDto.getMaloaigiay()+" WHERE `MaGiay`="+productDto.getMagiay()+" ";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }

    public void delete(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "DELETE FROM `sanpham` WHERE `MaGiay`="+productDto.getMagiay()+" ";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }
}
