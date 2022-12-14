package shop.online_shoes.service;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import shop.online_shoes.dto.*;
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

    public List<ProductDto> list (PaginationDto paginationDto) throws Exception {
         List<ProductDto> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT * FROM `sanpham` limit "+paginationDto.getPageSize()+" offset "+paginationDto.getCount()+"";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {
                ProductDto productDto= new ProductDto();
                productDto.setMagiay(resultSet.getInt("MaGiay"));
                productDto.setTengiay(resultSet.getString("TenGiay"));
                productDto.setMansx(resultSet.getLong("MaNSX"));
                productDto.setSoluong(resultSet.getInt("SoLuong"));
                productDto.setSize(resultSet.getString("Size"));
                productDto.setMausac(resultSet.getString("MauSac"));
                productDto.setGia(resultSet.getFloat("Gia"));
                productDto.setHinhanh(resultSet.getString("HinhAnh"));
                productDto.setMota(resultSet.getString("MoTa"));
                productDto.setMaloaigiay(resultSet.getLong("MaLoaiGiay"));
                list .add(productDto);

            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }
    public List<ProductDto> listNew () throws Exception {
         List<ProductDto> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT * FROM `sanpham` GROUP by sanpham.MaGiay DESC LIMIT 4";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {
                ProductDto productDto= new ProductDto();
                productDto.setMagiay(resultSet.getInt("MaGiay"));
                productDto.setTengiay(resultSet.getString("TenGiay"));
                productDto.setMansx(resultSet.getLong("MaNSX"));
                productDto.setSoluong(resultSet.getInt("SoLuong"));
                productDto.setSize(resultSet.getString("Size"));
                productDto.setMausac(resultSet.getString("MauSac"));
                productDto.setGia(resultSet.getFloat("Gia"));
                productDto.setHinhanh(resultSet.getString("HinhAnh"));
                productDto.setMota(resultSet.getString("MoTa"));
                productDto.setMaloaigiay(resultSet.getLong("MaLoaiGiay"));
                list .add(productDto);

            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }

    public ProductDto findById (int magiay) throws Exception {
        ProductDto productDto= new ProductDto();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT * FROM `sanpham` where magiay ="+magiay+"";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {

                productDto.setMagiay(resultSet.getInt("MaGiay"));
                productDto.setTengiay(resultSet.getString("TenGiay"));
                productDto.setMansx(resultSet.getLong("MaNSX"));
                productDto.setSoluong(resultSet.getInt("SoLuong"));
                productDto.setSize(resultSet.getString("Size"));
                productDto.setMausac(resultSet.getString("MauSac"));
                productDto.setGia(resultSet.getFloat("Gia"));
                productDto.setHinhanh(resultSet.getString("HinhAnh"));
                productDto.setMota(resultSet.getString("MoTa"));
                productDto.setMaloaigiay(resultSet.getLong("MaLoaiGiay"));

            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return  productDto;
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
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "INSERT INTO `sanpham`(`TenGiay`, `MaNSX`, `SoLuong`, `Size`, `MauSac`, `Gia`, `HinhAnh`, `MoTa`, `MaLoaiGiay`)" +
                    " VALUES ('"+productDto.getTengiay()+"','"+productDto.getMansx()+"','"+productDto.getSoluong()+"','"+productDto.getSize()+"','"+productDto.getMausac()+"','"+productDto.getGia()+"','"+productDto.getHinhanh()+"','"+productDto.getMota()+"','"+productDto.getMaloaigiay()+"')";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void update(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "UPDATE `sanpham` SET `TenGiay`='"+productDto.getTengiay()+"',`MaNSX`="+productDto.getMansx()+",`SoLuong`='"+productDto.getSoluong()+"',`Size`='"+productDto.getSize()+"',`MauSac`='"+productDto.getMausac()+"',`Gia`='"+productDto.getGia()+"',`HinhAnh`='"+productDto.getHinhanh()+"',`MoTa`='"+productDto.getMota()+"',`MaLoaiGiay`="+productDto.getMaloaigiay()+" WHERE `MaGiay`="+productDto.getMagiay()+" ";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void delete(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "DELETE FROM `sanpham` WHERE `MaGiay`="+productDto.getMagiay()+" ";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void updateSoluong(ProductDto productDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "UPDATE `sanpham` SET `SoLuong`="+productDto.getUpdateSoluong()+" WHERE `MaGiay`="+productDto.getMagiay()+" ";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public ProductDto countSize () throws Exception {
        ProductDto productDto= new ProductDto();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT COUNT(MaGiay) as countSize FROM sanpham";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);

            while (resultSet.next()) {
                productDto.setCountsize(resultSet.getInt("countSize"));
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return  productDto;
    }

}
