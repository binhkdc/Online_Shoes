package shop.online_shoes.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import shop.online_shoes.dto.ChangePasswordDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.ResponseDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.entities.UserEntity;
import shop.online_shoes.repository.user.UserRepository;
import shop.online_shoes.utils.Constant;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class UserService {


    @Autowired
    UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from user";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("ID", resultSet.getString("ID")) ;
                row.put("FULL_NAME",       resultSet.getString("FULL_NAME")) ;
                row.put("ADDRESS",   resultSet.getString("ADDRESS")) ;
                row.put("EMAIL", resultSet.getString("EMAIL")) ;
                row.put("ROLE",       resultSet.getString("ROLE")) ;
                row.put("STATUS",       resultSet.getString("STATUS")) ;

                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void save(UserDto userDto) throws Exception {
        UserEntity userEntity = new UserEntity();
        BeanUtils.copyProperties(userDto, userEntity);
        userEntity.setPassword(passwordEncoder.encode(userDto.getPassword()));
//        userDAO.save(userDto);

        userRepository.save(userEntity);
    }

    public List<HashMap<String, String>> details (String id) throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from user where `ID`= "+id+" ";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {


                HashMap<String,String> row = new HashMap<>();
                row.put("ID", resultSet.getString("ID")) ;
                row.put("FULL_NAME",       resultSet.getString("FULL_NAME")) ;
                row.put("ADDRESS",   resultSet.getString("ADDRESS")) ;
                row.put("EMAIL", resultSet.getString("EMAIL")) ;
                row.put("ROLE",       resultSet.getString("ROLE")) ;
                row.put("STATUS",       resultSet.getString("STATUS")) ;
                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void update(UserDto userDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "UPDATE `user` SET `FULL_NAME`='"+userDto.getFullName()+"',`ADDRESS`='"+userDto.getAddress()+"',`EMAIL`='"+userDto.getEmail()+"',`ROLE`='"+userDto.getRole()+"',`STATUS`="+userDto.getStatus()+" WHERE  `ID`="+userDto.getId()+" ";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }

    public ResponseDto changePassword(ChangePasswordDto userDto) {
        // chuyển từ dto sang entity
        UserEntity userEntity = userRepository.findById(((UserEntity) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal()).getId()).get();
        if (!passwordEncoder.matches(userDto.getOldPassword(), userEntity.getPassword())) {
            return new ResponseDto(Constant.CODE_ERROR, "Mật khẩu không khớp");
        }
        userEntity.setPassword(passwordEncoder.encode(userDto.getPassword()));
        userRepository.save(userEntity);
        return new ResponseDto(Constant.CODE_SUCCESS, "Đổi mật khẩu thành công");
    }

}
