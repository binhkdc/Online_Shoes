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
import shop.online_shoes.dto.CategoryDto;
import shop.online_shoes.dto.ProducerDto;
import shop.online_shoes.service.ProducerService;


@Service
@RequestMapping("/backend/producer")
@Controller
public class ProducerController {

    @Autowired
    ProducerService producerService;
    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", producerService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/producer/list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("create")
    public String createProduct(Model model) {
        return "/backend/producer/create";
    }

    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(ProducerDto producerDto,
                       RedirectAttributes model, Model m) {

        try {
            producerService.save(producerDto);
            model.addFlashAttribute("message", "Tạo mới tài sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới sản phẩm không thành công");
        }
        return "redirect:/backend/producer/create";
    }
}
