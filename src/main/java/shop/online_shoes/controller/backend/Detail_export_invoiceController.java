package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.online_shoes.service.Detail_export_invoiceService;


@Service
@RequestMapping("/backend/detail_export_invoice")
@Controller
public class Detail_export_invoiceController {

    @Autowired
    Detail_export_invoiceService detail_export_invoiceService;
    @GetMapping("/details/{id}")
    public String details(@PathVariable int id, Model model) {
        try {
            model.addAttribute("list", detail_export_invoiceService.details(id));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/export_invoice/details";
    }
}
