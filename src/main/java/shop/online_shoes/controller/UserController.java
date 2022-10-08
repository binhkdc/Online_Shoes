package shop.online_shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.UserService;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Objects;


@Service
@RequestMapping("user")
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
        return "user/list";
    }

    @GetMapping("create")
    public String createUser(Model model){
        return "user/create";
    }
    @PostMapping(value = "save", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String saveUser (UserDto userDto, RedirectAttributes model){
        try {
            userService.save(userDto);
            model.addFlashAttribute("message", "Tạo mới tài khoản thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới tài khoản không thành công");
        }

        return "redirect:/user/create";
    }


}
