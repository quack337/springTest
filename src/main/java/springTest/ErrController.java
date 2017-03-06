package springTest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrController {
    
    
    @RequestMapping("/err/index.do")
    public String input0(Model model) throws Exception {
        if (model != null) 
            throw new Exception("@ExceptionHandler 테스트");
        return "index";
    }

    @ExceptionHandler(Exception.class)
    public ModelAndView handleAllException(Exception ex) {
        ModelAndView model = new ModelAndView("err/exception");
        model.addObject("exception", ex);
        return model;
    }

}
