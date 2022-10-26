package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import shop.online_shoes.config.language.MessageConfig;

@Controller
@RequestMapping("")
public class HelloController {
    @Autowired
    MessageConfig messageConfig;
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

}
