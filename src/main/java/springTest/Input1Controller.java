package springTest;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Input1Controller {

    // data input
    @RequestMapping(value = "/input1/dataInput.do", method = RequestMethod.GET)
    public String input0(Model model) throws Exception {
        return "input1/dataInput";
    }

    @RequestMapping(value = "/input1/dataInput.do", method = RequestMethod.POST)
    public String input0(Model model, Data data) {
        return "input1/dataInput";
    }

    // dataList input
    @RequestMapping(value = "/input1/dataListInput.do", method = RequestMethod.GET)
    public String input(Model model) throws Exception {
        List<Data> dataList = new ArrayList<Data>();
        for (int i = 0; i < 10; ++i) {
            Data data = new Data();
            data.setId(i);
            data.setScore(100 - i);
            dataList.add(data);
        }
        model.addAttribute("dataList", dataList);
        return "input1/dataListInput";
    }

	@RequestMapping(value = "/input1/dataListInput.do", method = RequestMethod.POST)
    public String input(Model model, DataListModel dataListModel) {
        model.addAttribute("dataList", dataListModel.getDataList());
        return "input1/dataListInput";
    }	
	
}
