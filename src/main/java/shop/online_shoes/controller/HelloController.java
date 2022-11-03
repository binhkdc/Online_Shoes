package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.online_shoes.config.language.MessageConfig;
import shop.online_shoes.dto.UserDto;
import shop.online_shoes.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("")
public class HelloController {
    @Autowired
    MessageConfig messageConfig;

    @Autowired
    UserService userService;
    
    @RequestMapping("/HelloWorld")
    public String firstPage() {
        return "hello";
    }


    @GetMapping("login" )
    public String login(Model model, @RequestParam(required = false) String error) {
        if(error!=null){
            model.addAttribute("message",messageConfig.getMessage(error));
        }
        return "login";
    }

    @PostMapping(value = "createUser", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(@Valid @ModelAttribute("userDto") UserDto userDto,
                       BindingResult bindingResult, RedirectAttributes model, Model m) {
        if (bindingResult.hasErrors()) {
            return "/login";
        }
        try {
            userService.save(userDto);
            model.addFlashAttribute("message", "Tạo mới tài khoản thành công");
        } catch (Exception e) {
            model.addFlashAttribute("message", "Tạo mới tài khoản không thành công");
        }
        return "redirect:/login";
    }
}
