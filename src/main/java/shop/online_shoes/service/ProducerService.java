package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.CategoryDto;
import shop.online_shoes.dto.ProducerDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ProducerService {
    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from nhasanxuat";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("mansx", resultSet.getString("MaNSX")) ;
                row.put("tennsx",       resultSet.getString("TenNSX")) ;
                row.put("diachi", resultSet.getString("DiaChi")) ;
                row.put("email",       resultSet.getString("Email")) ;
                row.put("sdt",       resultSet.getString("SDT")) ;
                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public List<HashMap<String, String>> details (int id) throws Exception {
        List<HashMap<String, String>> UserDtoList = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from nhasanxuat where MaNSX= "+id+"";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("mansx", resultSet.getString("MaNSX")) ;
                row.put("tennsx",       resultSet.getString("TenNSX")) ;
                row.put("diachi", resultSet.getString("DiaChi")) ;
                row.put("email",       resultSet.getString("Email")) ;
                row.put("sdt",       resultSet.getString("SDT")) ;


                UserDtoList.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return UserDtoList;
    }

    public void save(ProducerDto producerDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "INSERT INTO `nhasanxuat`( `TenNSX`, `DiaChi`, `Email`, `SDT`) VALUES ('"+producerDto.getTennsx()+"','"+producerDto.getDiachi()+"','"+producerDto.getEmail()+"',"+producerDto.getSdt()+")";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void update(ProducerDto producerDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "UPDATE `nhasanxuat` SET `TenNSX`='"+producerDto.getTennsx()+"',`DiaChi`='"+producerDto.getDiachi()+"',`Email`='"+producerDto.getEmail()+"',`SDT`="+producerDto.getSdt()+" WHERE `MaNSX`="+producerDto.getMansx()+"";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }

    public void delete(ProducerDto producerDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // B?????c 3: T???o c??u truy v???n
            String selectSql = "DELETE FROM `nhasanxuat` WHERE `MaNSX`="+producerDto.getMansx()+" ";
            // B?????c 4; Run k???t qu???
            sqlFile.execute(selectSql);
        } finally {
            // B?????c 5: ????ng k???t n???i
            sqlFile.close();
            con.close();
        }
    }
}
