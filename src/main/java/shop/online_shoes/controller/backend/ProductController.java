package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.CategoryService;
import shop.online_shoes.service.ProducerService;
import shop.online_shoes.service.ProductService;


import javax.validation.Valid;
import java.io.IOException;

@Service
@RequestMapping("/backend/product")
@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;

    @Autowired
    ProducerService producerService;

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
        try {
            model.addAttribute("producer", producerService.list());
            model.addAttribute("category", categoryService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/backend/product/create";
    }


    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(@Valid @ModelAttribute("userDto") ProductDto productDto,
                       BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/product/create";
        }

        try {
            productService.save(productDto);
            model.addFlashAttribute("message", "Tạo mới sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới sản phẩm không thành công");
        }
        return "redirect:/backend/product/create";
    }

    @GetMapping(value = {"/details/{id}"})
    public String details(@PathVariable String id, Model model) {
        try {
            model.addAttribute("producer", producerService.list());
            model.addAttribute("product", productService.details(id));
            model.addAttribute("category", categoryService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/details";
    }

    @GetMapping(value = {"/edit/{id}"})
    public String edit(@PathVariable String id, Model model) {
        try {
            model.addAttribute("producer", producerService.list());
            model.addAttribute("product", productService.details(id));
            model.addAttribute("category", categoryService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/edit";
    }

    @PostMapping(value = "update", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String update(ProductDto productDto,
                       BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/product/details";
        }
        try {
            productService.update(productDto);
            model.addFlashAttribute("message", "Sửa sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Sửa sản phẩm không thành công");
        }
        return "redirect:/backend/product/list";
    }

    @GetMapping(value = {"/delete/{id}"})
    public String delete(@PathVariable String id, Model model) {
        try {
            model.addAttribute("producer", producerService.list());
            model.addAttribute("product", productService.details(id));
            model.addAttribute("category", categoryService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/delete";
    }

    @PostMapping(value = "deleteProduct", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String deleteProduct(ProductDto productDto,
                         BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/product/delete";
        }
        try {
            productService.delete(productDto);
            model.addFlashAttribute("message", "Xóa sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Xóa sản phẩm không thành công");
        }
        return "redirect:/backend/product/list";
    }

}
