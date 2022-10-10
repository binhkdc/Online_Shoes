package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.ProductService;

import javax.validation.Valid;

@Service
@RequestMapping("/backend/product")
@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", productService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("create")
    public String createProduct(Model model) {
        return "/backend/product/create";
    }


//    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
//    public String save(@Valid @ModelAttribute("userDto") UserDto userDto,
//                       BindingResult bindingResult, RedirectAttributes model, Model m) {
//        if (bindingResult.hasErrors()) {
//            return "/backend/user/create";
//        }
//        try {
//            productService.save(userDto);
//            model.addFlashAttribute("message", "Tạo mới tài khoản thành công");
//        } catch (Exception e) {
//            model.addFlashAttribute("message", "Tạo mới tài khoản không thành công");
//        }
//        return "redirect:/backend/user/create";
//    }
}
