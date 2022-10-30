package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.online_shoes.dto.CartDto;
import shop.online_shoes.service.CartService;
import shop.online_shoes.service.ProductService;

import shop.online_shoes.service.ProducerService;

import java.util.Collection;


@Controller
public class HomeController {
    @Autowired
    ProducerService producerService;

    @Autowired
    private ProductService productService;

    @Autowired
    CartService cartService;
    @GetMapping("")
    public String home(Model model) {

        try {
            Collection<CartDto> cartDtos= cartService.getCart();
            if(cartDtos==null){
                model.addAttribute("message", "Giỏ hàng trống!!");
            }
            model.addAttribute("CartItem", cartDtos);
            model.addAttribute("Gia", cartService.getAmount());
            model.addAttribute("Soluong",cartService.getCount());
            model.addAttribute("product", productService.list());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }


}
