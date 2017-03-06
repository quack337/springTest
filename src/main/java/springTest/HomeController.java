package springTest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @ModelAttribute
    public void method1(Model model, @RequestParam("msg") String msg) {
        Data data = new Data();
        data.setId(123);
        model.addAttribute("data", data);
        model.addAttribute("msg", msg);
    }

    @RequestMapping("/index.do")
    public String hello(Model model) {
        return "index";
    }

    @RequestMapping("/form.do")
    public String form(Model model) {
        return "form";
    }


}
