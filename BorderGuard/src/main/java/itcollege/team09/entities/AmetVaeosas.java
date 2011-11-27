package itcollege.team09.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import itcollege.team09.entities.Vaeosa;
import javax.persistence.ManyToOne;

@Entity
@RooToString
@RooEntity
public class AmetVaeosas extends Piirivalve {
	
	private String amet;
	
	 @NotNull
	 @DateTimeFormat(style="M-")
	 private Date alates;
	    
	 @NotNull
	 @DateTimeFormat(style="M-")
	 private Date kuni;

	@ManyToOne
	private Vaeosa vaeosa;

	
	 
	public String getAmet() {
		return amet;
	}
	public void setAmet(String amet) {
		this.amet = amet;
	}
	public Date getAlates() {
		return alates;
	}
	public void setAlates(Date alates) {
		this.alates = alates;
	}
	public Date getKuni() {
		return kuni;
	}
	public void setKuni(Date kuni) {
		this.kuni = kuni;
	}
	public Vaeosa getVaeosa() {
	    return vaeosa;
	}
	public void setVaeosa(Vaeosa param) {
	    this.vaeosa = param;
	}
}