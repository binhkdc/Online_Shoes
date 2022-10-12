package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.ProducerDto;
import shop.online_shoes.dto.SupplierDto;
import shop.online_shoes.service.SupplierService;

@Service
@RequestMapping("/backend/supplier")
@Controller
public class SupplierController {


    @Autowired
    SupplierService supplierService;

    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", supplierService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/supplier/list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("create")
    public String createProduct(Model model) {
        return "/backend/supplier/create";
    }

    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(SupplierDto supplierDto,
                       RedirectAttributes model, Model m) {

        try {
            supplierService.save(supplierDto);
            model.addFlashAttribute("message", "Tạo mới tài sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới sản phẩm không thành công");
        }
        return "redirect:/backend/supplier/create";
    }
}
