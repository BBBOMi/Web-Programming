package net.skhu.hello1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bomi on 2019-04-22.
 */

@Controller
public class HomeController {
    @RequestMapping("")
    public String index(Model model) {
        model.addAttribute("message", "좋은 아침");
        return "index";
    }
}
