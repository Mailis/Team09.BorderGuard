// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.entities;

import java.lang.String;

privileged aspect VaeosaAlluvus_Roo_ToString {
    
    public String VaeosaAlluvus.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alamvaeosa: ").append(getAlamvaeosa()).append(", ");
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Vaeosa: ").append(getVaeosa()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}