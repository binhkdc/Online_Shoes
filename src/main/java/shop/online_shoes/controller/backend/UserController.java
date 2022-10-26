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
import shop.online_shoes.dto.ChangePasswordDto;
import shop.online_shoes.dto.ProductDto;
import shop.online_shoes.dto.ResponseDto;
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

    @GetMapping("profile")
    public String profile(Model model) {

        return "/backend/user/profile";
    }

    @GetMapping("change-password")
    public String changePassword(Model model) {
        model.addAttribute("user", new ChangePasswordDto());
        return "/backend/user/change-password";
    }

    @PostMapping(value = "change-password", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public String changePasswordSave(@Valid @ModelAttribute("user") ChangePasswordDto userDto,
                                     BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (!Objects.equals(userDto.getPassword(), userDto.getRePassword())) {
            bindingResult.rejectValue("rePassword","error.userDto", "Mật khẩu không trùng khớp");
        }
        if (bindingResult.hasErrors()) {
            return "/backend/user/change-password";
        }
        // Lấy ID của tài khoản  đa đăng nhập
        ResponseDto responseDto = userService.changePassword(userDto);
        model.addFlashAttribute("messsage", responseDto.getMessage());

        return "redirect:/login";
    }
}


