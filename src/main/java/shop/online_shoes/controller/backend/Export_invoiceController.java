package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.online_shoes.service.Export_InvoiceService;

@Service
@RequestMapping("/backend/export_invoice")
@Controller
public class Export_invoiceController {
    @Autowired
    Export_InvoiceService export_invoiceService;
    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", export_invoiceService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/export_invoice/list";
    }
}
