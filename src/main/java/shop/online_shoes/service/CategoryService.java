package shop.online_shoes.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.online_shoes.dto.CategoryDto;
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
public class CategoryService {


    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from loaigiay";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("maloaigiay", resultSet.getString("MaLoaiGiay")) ;
                row.put("loaigiay",       resultSet.getString("LoaiGiay")) ;

                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public List<HashMap<String, String>> detailCategory (int id) throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from loaigiay where MaLoaiGiay ="+id+" ";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("maloaigiay", resultSet.getString("MaLoaiGiay")) ;
                row.put("loaigiay",       resultSet.getString("LoaiGiay")) ;

                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void save(CategoryDto categoryDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "INSERT INTO `loaigiay`(`LoaiGiay`) VALUES ('"+categoryDto.getLoaigiay()+"')";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public List<HashMap<String, String>> details (String id) throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "SELECT * FROM `loaigiay` where `MaLoaiGiay`= "+id+" ";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();

                row.put("maloaigiay", resultSet.getString("MaLoaiGiay")) ;
                row.put("loaigiay",       resultSet.getString("LoaiGiay")) ;
                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void update(CategoryDto categoryDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "UPDATE `loaigiay` SET `LoaiGiay`='"+categoryDto.getLoaigiay()+"' WHERE `MaLoaiGiay`="+categoryDto.getMaloaigiay()+"";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void delete(CategoryDto categoryDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "DELETE FROM `loaigiay` WHERE `MaLoaiGiay`="+categoryDto.getMaloaigiay()+" ";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }
}
