package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.CategoryDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.service.CategoryService;


@Service
@RequestMapping("/backend/category")
@Controller
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", categoryService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/category/list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("create")
    public String createProduct(Model model) {
        return "/backend/category/create";
    }


    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(CategoryDto categoryDto,
                       RedirectAttributes model, Model m) {

        try {
            categoryService.save(categoryDto);
            model.addFlashAttribute("message", "Tạo mới loại sản phẩm thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới loại sản phẩm không thành công");
        }
        return "redirect:/backend/category/create";
    }

    @GetMapping(value = {"/details/{id}"})
    public String details(@PathVariable String id, Model model) {
        try {

            model.addAttribute("category", categoryService.details(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/category/details";
    }

    @GetMapping(value = {"/edit/{id}"})
    public String edit(@PathVariable String id, Model model) {
        try {

            model.addAttribute("category", categoryService.details(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/category/edit";
    }

    @PostMapping(value = "update", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String update(CategoryDto categoryDto,
                         BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/category/details";
        }
        try {
            categoryService.update(categoryDto);
            model.addFlashAttribute("message", "Sửa Loại giày thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Sửa Loại giày không thành công");
        }
        return "redirect:/backend/category/list";
    }

    @GetMapping(value = {"/delete/{id}"})
    public String delete(@PathVariable String id, Model model) {
        try {

            model.addAttribute("category", categoryService.details(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/category/delete";
    }

    @PostMapping(value = "deleteCategory", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String deleteCategory(CategoryDto categoryDto,
                                BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/category/delete";
        }
        try {
            categoryService.delete(categoryDto);
            model.addFlashAttribute("message", "Xóa Loại giày thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Xóa Loại giày không thành công vì có liên kết với bảng sản phẩm");
        }
        return "redirect:/backend/category/list";
    }
}
