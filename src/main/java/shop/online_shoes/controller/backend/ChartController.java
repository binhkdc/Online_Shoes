package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.online_shoes.service.ChartService;

@Controller
@RequestMapping("/backend")
public class ChartController {

    @Autowired
    ChartService chartService;

    @GetMapping("chart")
    public String list(Model model) {
        try {
            model.addAttribute("getTengiay",chartService.getTengiay());
            model.addAttribute("getSoluong",chartService.getSoluong());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/index";
    }
}
