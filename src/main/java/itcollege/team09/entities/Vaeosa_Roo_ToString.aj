// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.entities;

import java.lang.String;

privileged aspect Vaeosa_Roo_ToString {
    
    public String Vaeosa.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdminYksus: ").append(getAdminYksus()).append(", ");
        sb.append("Alamvaeosad: ").append(getAlamvaeosad() == null ? "null" : getAlamvaeosad().size()).append(", ");
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kood: ").append(getKood()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Nimetus: ").append(getNimetus()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Ylemvaeosad: ").append(getYlemvaeosad() == null ? "null" : getYlemvaeosad().size());
        return sb.toString();
    }
    
}
