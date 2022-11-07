package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ChartService {

    public List<String> getSoluong () throws Exception {
        List<String> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {

            String selectSql = "SELECT COUNT(ct_hoadonxuat.SoLuong) as countsoluong FROM ct_hoadonxuat GROUP by MaHDXuat";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                list.add(resultSet.getString("countsoluong"));
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }
    public List<String> getTengiay() throws Exception {
        List<String> list = new ArrayList<>();
        Connection conn = DbUtils.getCollection();
        Statement sqlFile = conn.createStatement();
        try {

            String selectSql = " SELECT COUNT(ct_hoadonxuat.SoLuong) as countsoluong, sanpham.TenGiay FROM ct_hoadonxuat JOIN sanpham on sanpham.MaGiay=ct_hoadonxuat.MaGiay GROUP by MaHDXuat";
            ResultSet resultSet = sqlFile.executeQuery(selectSql);
            while (resultSet.next()) {
                list.add(resultSet.getString("sanpham.TenGiay"));
            }
            resultSet.close();
        } finally {
            sqlFile.close();
            conn.close();
        }
        return list;
    }
}
