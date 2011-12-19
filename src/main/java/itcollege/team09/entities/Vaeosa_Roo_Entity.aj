// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.entities;

import itcollege.team09.entities.Vaeosa;
import java.lang.Long;
import java.util.List;

privileged aspect Vaeosa_Roo_Entity {
    
    public static long Vaeosa.countVaeosas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Vaeosa o", Long.class).getSingleResult();
    }
    
    public static List<Vaeosa> Vaeosa.findAllVaeosas() {
        return entityManager().createQuery("SELECT o FROM Vaeosa o", Vaeosa.class).getResultList();
    }
    
    public static Vaeosa Vaeosa.findVaeosa(Long id) {
        if (id == null) return null;
        return entityManager().find(Vaeosa.class, id);
    }
    
    public static List<Vaeosa> Vaeosa.findVaeosaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Vaeosa o", Vaeosa.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
