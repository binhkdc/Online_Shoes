package shop.online_shoes.controller;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yaml.snakeyaml.util.ArrayUtils;
import shop.online_shoes.dto.*;
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

    @GetMapping("home")
    public String home(@RequestParam(defaultValue = "1") int page,Model model,PaginationDto paginationDto)  {

        try {
            paginationDto.setActivePage(page);
            paginationDto.setPage(page);
            paginationDto.setPageSize(5);
            paginationDto.setCount(paginationDto.getPageSize() * (page-1));
            paginationDto.setPrePage(paginationDto.getActivePage()-1);
            paginationDto.setNextPage(paginationDto.getActivePage()+1);
            double c = Math.ceil(productService.countSize().getCountsize() / paginationDto.getPageSize());

            model.addAttribute("countsize",productService.countSize());
            model.addAttribute("totalend",c);
            model.addAttribute("pagination",paginationDto);
            model.addAttribute("list", productService.list(paginationDto));
            paginationDto.setPage(page);
            model.addAttribute("product", productService.list(paginationDto));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }

    @PostMapping("checkOut")
    public String checkOut(@RequestParam("userid") int userid, Model model, Export_invoiceDto export_invoiceDto, Detail_export_invoiceDto detail_export_invoiceDto, ProductDto productDto) {

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
                        ProductDto productDtoList= productService.findById(value.getMagiay());

                        if (productDtoList != null) {
                            productService.findById(value.getMagiay());
                            productDtoList.setUpdateSoluong(productDtoList.getSoluong()-value.getSoluong());
                            productService.updateSoluong(productDtoList);
                        }
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
