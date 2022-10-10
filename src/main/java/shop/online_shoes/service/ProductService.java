package shop.online_shoes.service;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
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
            String selectSql = "Select * from sanpham";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();

                row.put("magiay", resultSet.getString("MaGiay")) ;
                row.put("tengiay",       resultSet.getString("TenGiay")) ;
                row.put("mansx",   resultSet.getString("MaNSX")) ;
                row.put("soluong", resultSet.getString("SoLuong")) ;
                row.put("siza",       resultSet.getString("Size")) ;
                row.put("mausac",       resultSet.getString("MauSac")) ;
                row.put("mansx",   resultSet.getString("Gia")) ;
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

//    public void save(UserDto userDto) throws Exception {
//        UserEntity userEntity = new UserEntity();
//        BeanUtils.copyProperties(userDto, userEntity);
//        userEntity.setPassword(passwordEncoder.encode(userDto.getPassword()));
////        userDAO.save(userDto);
//
//        userRepository.save(userEntity);
//    }
}
