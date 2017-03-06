package springTest;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimeTableController {

    private List<Lecture> selectLecture() {
        ArrayList<Lecture> list = new ArrayList<Lecture>();
        list.add(new Lecture("고급웹2", 0, 9, 0, 10, 15, "#ffd", "6202"));
        list.add(new Lecture("모바일2", 0, 10, 30, 11, 45, "#dff", "6405"));
        list.add(new Lecture("모바일2", 2, 9, 0, 10, 15, "#dff", "6405"));
        list.add(new Lecture("고급웹2", 2, 10, 30, 11, 45, "#ffd", "6202"));
        list.add(new Lecture("고급웹1", 0, 12, 0, 14, 45, "#dfd", "6202"));
        list.add(new Lecture("과정지도", 1, 11, 0, 11, 50, "#ddf", "6202"));
        list.add(new Lecture("프로젝트", 4, 9, 0, 11, 45, "#fdd", "6202"));
        return list;
    }

    @RequestMapping("/timeTable.do")
    public String hello(Model model) {
        model.addAttribute("list", selectLecture());
        return "timeTable/index";
    }

}
