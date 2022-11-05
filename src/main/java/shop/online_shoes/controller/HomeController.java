package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yaml.snakeyaml.util.ArrayUtils;
import shop.online_shoes.dto.CartDto;
import shop.online_shoes.dto.Detail_export_invoiceDto;
import shop.online_shoes.dto.Export_invoiceDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.*;

import javax.validation.Valid;
import java.util.*;


@Controller
public class HomeController {
    @Autowired
    ProducerService producerService;

    @Autowired
    private ProductService productService;

    @Autowired
    Export_InvoiceService export_invoiceService;

    @Autowired
    Detail_export_invoiceService detail_export_invoiceService;

    @Autowired
    CartService cartService;

    @GetMapping("")
    public String home(Model model) {

        try {
            Collection<CartDto> cartDtos = cartService.getCart();
            if (cartDtos != null) {
                model.addAttribute("CartItem", cartDtos);
                model.addAttribute("Gia", cartService.getAmount());
                model.addAttribute("Soluong", cartService.getCount());
                model.addAttribute("product", productService.list());

            } else {
                model.addAttribute("message", "Giỏ hàng trống!!");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }

    @PostMapping("checkOut")
    public String checkOut(@RequestParam("userid") int userid, Model model, Export_invoiceDto export_invoiceDto, Detail_export_invoiceDto detail_export_invoiceDto) {

        try {
            Collection<CartDto> cartDtos = cartService.getCart();
            export_invoiceDto.setNgayxuat(String.valueOf(java.time.LocalDateTime.now()));
            export_invoiceDto.setTongtien((float) cartService.getAmount());
            export_invoiceDto.setUserid(userid);
            export_invoiceService.save(export_invoiceDto);
            detail_export_invoiceDto.setMahdxuat(export_invoiceService.lastInsert().get(0));
                cartDtos.forEach((value) -> {
                    detail_export_invoiceDto.setMagiay(value.getMagiay());
                    detail_export_invoiceDto.setSoluong(value.getSoluong());
                    detail_export_invoiceDto.setGia(value.getGia());
                    try {
                        detail_export_invoiceService.save(detail_export_invoiceDto);
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                });
                
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/";
    }

}
