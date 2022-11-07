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
import shop.online_shoes.dto.PaginationDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.CategoryService;
import shop.online_shoes.service.FileUploadService;
import shop.online_shoes.service.ProducerService;
import shop.online_shoes.service.ProductService;



import javax.servlet.ServletContext;
import javax.validation.Path;
import javax.validation.Valid;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

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
    public String list(@RequestParam(defaultValue = "1") int page, Model model, PaginationDto paginationDto) {
        try {

            paginationDto.setActivePage(page);
            paginationDto.setPage(page);
            paginationDto.setPageSize(6);
            paginationDto.setCount(paginationDto.getPageSize() * (page-1));
            paginationDto.setPrePage(paginationDto.getActivePage()-1);
            paginationDto.setNextPage(paginationDto.getActivePage()+1);
            double c = Math.ceil(productService.countSize().getCountsize() / paginationDto.getPageSize());

            model.addAttribute("countsize",productService.countSize());
            model.addAttribute("totalend",c);
            model.addAttribute("pagination",paginationDto);
            model.addAttribute("list", productService.list(paginationDto));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/list";
    }


    @GetMapping(value = {"/detail_producer/{id}"})
    public String details_producer(@PathVariable int id, Model model) {
        try {
            model.addAttribute("detail_producer", producerService.details(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/producer";
    }

    @GetMapping(value = {"/detail_category/{id}"})
    public String details_category(@PathVariable int id, Model model) {
        try {
            model.addAttribute("detail_category", categoryService.detailCategory(id));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/product/category";
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

    @Autowired
    FileUploadService fileUploadService;
    @PostMapping(value = "save", consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces  = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(@Valid @ModelAttribute("userDto") ProductDto productDto,
                       BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/product/create";
        }

        try {
            fileUploadService.uploadfile(productDto.getFileImage());
            productDto.setHinhanh(productDto.getFileImage().getOriginalFilename());
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
