package shop.online_shoes.controller;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import shop.online_shoes.dto.CartDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.service.CartService;
import shop.online_shoes.service.ProductService;

import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("shoppingCart")
public class ShoppingCartController {

    @Autowired
    ProductService productService;

    @Autowired
    CartService cartService;

    @GetMapping("list")
    public String List(Model model) {

        Collection<CartDto> cartDtos = cartService.getCart();
        if (cartDtos != null) {
            model.addAttribute("CartItem", cartDtos);
            model.addAttribute("Gia", cartService.getAmount());
            model.addAttribute("Soluong", cartService.getCount());


        } else {
            model.addAttribute("message", "Giỏ hàng trống!!");
        }


        return "/shoppingCarts/list";
    }

    @GetMapping(value = {"add/{id}"})
    public String add(@PathVariable("id") int id, Model model) throws Exception {

        try {
            ProductDto productDtoList= productService.findById(id);

            if (productDtoList != null) {
                CartDto item = new CartDto();
                BeanUtils.copyProperties(productDtoList,item);
                item.setSoluong(1);
                cartService.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/shoppingCart/list";
    }

    @GetMapping("remove/{id}")
    public String remove(@PathVariable("id") int id) {
        cartService.remove(id);
        return "redirect:/shoppingCart/list";
    }

    @PostMapping("update")
    public String update(@RequestParam("magiay") int magiay, @RequestParam("soluong") int soluong) {
        cartService.update(magiay,soluong);
        return "redirect:/shoppingCart/list";
    }

    @GetMapping("clear")
    public String clear() {
        return "redirect:/home";
    }
}
