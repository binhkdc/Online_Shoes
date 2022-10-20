package shop.online_shoes.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.UserService;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Objects;


@Service
@RequestMapping("/backend/user")
@Controller
public class UserController {
    @Autowired
    UserService userService;


    @GetMapping("list")
    public String list(Model model) {
        try {
            model.addAttribute("list", userService.list());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/user/list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("create")
    public String createUser(Model model) {
        return "/backend/user/create";
    }


    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(@Valid @ModelAttribute("userDto") UserDto userDto,
                       BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/user/create";
        }
        try {
            userService.save(userDto);
            model.addFlashAttribute("message", "Tạo mới tài khoản thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới tài khoản không thành công");
        }
        return "redirect:/backend/user/create";
    }
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping(value = {"/edit/{id}"})
    public String edit(@PathVariable String id, Model model) {
        try {

            model.addAttribute("user", userService.details(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/backend/user/edit";
    }

    @PostMapping(value = "update", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String update(UserDto userDto,
                         BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/backend/user/details";
        }
        try {
            userService.update(userDto);
            model.addFlashAttribute("message", "Sửa người dùng thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Sửa người dùng không thành công");
        }
        return "redirect:/backend/user/list";
    }

}


