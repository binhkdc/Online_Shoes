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

}
