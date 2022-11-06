package shop.online_shoes.service;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import shop.online_shoes.dto.CartDto;
import shop.online_shoes.utils.DbUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

@Service
@SessionScope
public class CartService {
    Map<Integer, CartDto> cart =new HashMap<Integer,CartDto>();


    public void   add (CartDto item)  {
            CartDto exitedItem= cart.get(item.getMagiay());
            if(exitedItem != null){
                exitedItem.setSoluong(item.getSoluong()+ exitedItem.getSoluong());
            }else {
                cart.put(item.getMagiay(), item);
            }
    };
    public Collection<CartDto> getCart() {

        return cart.values();
    }

    public void remove(int magiay){
        cart.remove(magiay);
    }

    public void update(int magiay, int soluong){
        CartDto item = cart.get(magiay);
        item.setSoluong(soluong);

        if(item.getSoluong() <= 0){
            cart.remove(magiay);
        }
    }

    public double getAmount(){
        return cart.values().stream().mapToDouble(item-> item.getSoluong() * item.getGia()).sum();
    }

    public int getCount(){
        return cart.values().size();
    }

    public void ClearCart(){
        cart.clear();
    }

}
