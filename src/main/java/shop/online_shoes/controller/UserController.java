package shop.online_shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.online_shoes.service.UserService;


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


}
