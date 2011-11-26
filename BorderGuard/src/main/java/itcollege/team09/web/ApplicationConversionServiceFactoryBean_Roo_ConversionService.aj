// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.web;

import itcollege.team09.entities.AdminAlluvus;
import itcollege.team09.entities.AdminYksus;
import itcollege.team09.entities.AdminYksuseLiik;
import itcollege.team09.entities.AmetVaeosas;
import itcollege.team09.entities.Vaeosa;
import itcollege.team09.entities.VaeosaAlluvus;
import itcollege.team09.entities.VoimalikAlluvus;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new AdminAlluvusConverter());
        registry.addConverter(new AdminYksusConverter());
        registry.addConverter(new AdminYksuseLiikConverter());
        registry.addConverter(new AmetVaeosasConverter());
        registry.addConverter(new VaeosaConverter());
        registry.addConverter(new VaeosaAlluvusConverter());
        registry.addConverter(new VoimalikAlluvusConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.AdminAlluvusConverter implements Converter<AdminAlluvus, String> {
        public String convert(AdminAlluvus adminAlluvus) {
            return new StringBuilder().append(adminAlluvus.getKommentaar()).append(" ").append(adminAlluvus.getAvaja()).append(" ").append(adminAlluvus.getAvatud()).append(" ").append(adminAlluvus.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.AdminYksusConverter implements Converter<AdminYksus, String> {
        public String convert(AdminYksus adminYksus) {
            return new StringBuilder().append(adminYksus.getKommentaar()).append(" ").append(adminYksus.getAvaja()).append(" ").append(adminYksus.getAvatud()).append(" ").append(adminYksus.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.AdminYksuseLiikConverter implements Converter<AdminYksuseLiik, String> {
        public String convert(AdminYksuseLiik adminYksuseLiik) {
            return new StringBuilder().append(adminYksuseLiik.getKommentaar()).append(" ").append(adminYksuseLiik.getAvaja()).append(" ").append(adminYksuseLiik.getAvatud()).append(" ").append(adminYksuseLiik.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.AmetVaeosasConverter implements Converter<AmetVaeosas, String> {
        public String convert(AmetVaeosas ametVaeosas) {
            return new StringBuilder().append(ametVaeosas.getKommentaar()).append(" ").append(ametVaeosas.getAvaja()).append(" ").append(ametVaeosas.getAvatud()).append(" ").append(ametVaeosas.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.VaeosaConverter implements Converter<Vaeosa, String> {
        public String convert(Vaeosa vaeosa) {
            return new StringBuilder().append(vaeosa.getKommentaar()).append(" ").append(vaeosa.getAvaja()).append(" ").append(vaeosa.getAvatud()).append(" ").append(vaeosa.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.VaeosaAlluvusConverter implements Converter<VaeosaAlluvus, String> {
        public String convert(VaeosaAlluvus vaeosaAlluvus) {
            return new StringBuilder().append(vaeosaAlluvus.getKommentaar()).append(" ").append(vaeosaAlluvus.getAvaja()).append(" ").append(vaeosaAlluvus.getAvatud()).append(" ").append(vaeosaAlluvus.getMuutja()).toString();
        }
        
    }
    
    static class itcollege.team09.web.ApplicationConversionServiceFactoryBean.VoimalikAlluvusConverter implements Converter<VoimalikAlluvus, String> {
        public String convert(VoimalikAlluvus voimalikAlluvus) {
            return new StringBuilder().append(voimalikAlluvus.getKommentaar()).append(" ").append(voimalikAlluvus.getAvaja()).append(" ").append(voimalikAlluvus.getAvatud()).append(" ").append(voimalikAlluvus.getMuutja()).toString();
        }
        
    }
    
}
