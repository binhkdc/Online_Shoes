package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.dto.ProducerDto;
import shop.online_shoes.dto.SupplierDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class SupplierService {

    public List<HashMap<String, String>> list () throws Exception {
        List<HashMap<String, String>> SupplierDto = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {
            String selectSql = "Select * from nhacungcap";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                HashMap<String,String> row = new HashMap<>();
                row.put("mancc", resultSet.getString("MaNCC")) ;
                row.put("tenncc",       resultSet.getString("TenNCC")) ;
                row.put("diachi", resultSet.getString("DiaChi")) ;
                row.put("email",       resultSet.getString("Email")) ;
                row.put("sdt",       resultSet.getString("SoDienThoai")) ;


                SupplierDto.add(row);
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return SupplierDto;
    }

    public void save(SupplierDto supplierDto) throws Exception {
        Connection con = DbUtils.getCollection();
        Statement sqlFile = con.createStatement();
        try {
            // Bước 3: Tạo câu truy vấn
            String selectSql = "INSERT INTO `nhacungcap`(`TenNCC`, `DiaChi`, `EMail`, `SoDienThoai`)" +
                    " VALUES ('"+supplierDto.getTenncc()+"','"+supplierDto.getDiachi()+"','"+supplierDto.getDiachi()+"',"+supplierDto.getSdt()+")";
            // Bước 4; Run kết quả
            sqlFile.execute(selectSql);
        } finally {
            // Bước 5: Đóng kết nối
            sqlFile.close();
            con.close();
        }
    }
}
