// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.web;

import itcollege.team09.entities.AmetVaeosas;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect AmetVaeosasController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AmetVaeosasController.create(@Valid AmetVaeosas ametVaeosas, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ametVaeosas", ametVaeosas);
            addDateTimeFormatPatterns(uiModel);
            return "ametvaeosases/create";
        }
        uiModel.asMap().clear();
        ametVaeosas.persist();
        return "redirect:/ametvaeosases/" + encodeUrlPathSegment(ametVaeosas.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AmetVaeosasController.createForm(Model uiModel) {
        uiModel.addAttribute("ametVaeosas", new AmetVaeosas());
        addDateTimeFormatPatterns(uiModel);
        return "ametvaeosases/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AmetVaeosasController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("ametvaeosas", AmetVaeosas.findAmetVaeosas(id));
        uiModel.addAttribute("itemId", id);
        return "ametvaeosases/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AmetVaeosasController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("ametvaeosases", AmetVaeosas.findAmetVaeosasEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) AmetVaeosas.countAmetVaeosases() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ametvaeosases", AmetVaeosas.findAllAmetVaeosases());
        }
        addDateTimeFormatPatterns(uiModel);
        return "ametvaeosases/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AmetVaeosasController.update(@Valid AmetVaeosas ametVaeosas, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ametVaeosas", ametVaeosas);
            addDateTimeFormatPatterns(uiModel);
            return "ametvaeosases/update";
        }
        uiModel.asMap().clear();
        ametVaeosas.merge();
        return "redirect:/ametvaeosases/" + encodeUrlPathSegment(ametVaeosas.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String AmetVaeosasController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("ametVaeosas", AmetVaeosas.findAmetVaeosas(id));
        addDateTimeFormatPatterns(uiModel);
        return "ametvaeosases/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String AmetVaeosasController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AmetVaeosas.findAmetVaeosas(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ametvaeosases";
    }
    
    @ModelAttribute("ametvaeosases")
    public Collection<AmetVaeosas> AmetVaeosasController.populateAmetVaeosases() {
        return AmetVaeosas.findAllAmetVaeosases();
    }
    
    void AmetVaeosasController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ametVaeosas_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ametVaeosas_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String AmetVaeosasController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
