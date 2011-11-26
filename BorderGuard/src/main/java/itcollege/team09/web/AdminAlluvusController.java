package itcollege.team09.web;

import itcollege.team09.entities.AdminAlluvus;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "adminalluvuses", formBackingObject = AdminAlluvus.class)
@RequestMapping("/adminalluvuses")
@Controller
public class AdminAlluvusController {
}
