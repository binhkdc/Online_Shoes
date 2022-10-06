package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class UserService {

    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from user";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("UserId", resultSet.getString("UserId")) ;
                row.put("Full_Name",       resultSet.getString("Full_Name")) ;
                row.put("Address",   resultSet.getString("Address")) ;
                row.put("Email", resultSet.getString("Email")) ;
                row.put("Role",       resultSet.getString("Role")) ;

                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void save(UserDto userDto) throws Exception{
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "INSERT INTO `user`( `Full_Name`, `Address`, `Email`, `Password`, `Role`) VALUES ('"+userDto.getFull_Name()+"','"+userDto.getAddress()+"','"+userDto.getEmail()+"','"+userDto.getPassword()+"',0 )";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }
}
