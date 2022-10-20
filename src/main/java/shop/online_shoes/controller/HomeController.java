package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import shop.online_shoes.service.ProductService;

@Controller
public class HomeController {
    @Autowired
    ProductService productService;
    @GetMapping("index")
    public String login(Model model) {
        try {
            model.addAttribute("product", productService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }
}
