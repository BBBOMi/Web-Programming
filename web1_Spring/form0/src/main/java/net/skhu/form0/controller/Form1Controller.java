package net.skhu.form0.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by bomi on 2019-06-05.
 */

@Controller
public class Form1Controller {

    @RequestMapping("")
    public String index(Model model) {
        return "index";
    }

    @GetMapping("/form1/edit1")
    public String edit1(Model model) {
        return "edit1";
    }

    @PostMapping("/form1/edit1")
    public String edit1(Model model, @RequestParam("title") String title
                                    , @RequestParam("color") String color) {
        model.addAttribute("title", title);
        model.addAttribute("color", color);
        System.out.printf("제목: %s, 색: %s \n", title, color);
        return "edit1";
    }
}
