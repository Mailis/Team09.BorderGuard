// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package itcollege.team09.entities;

import itcollege.team09.entities.AdminYksus;
import java.lang.Long;
import java.util.List;

privileged aspect AdminYksus_Roo_Entity {
    
    public static long AdminYksus.countAdminYksuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AdminYksus o", Long.class).getSingleResult();
    }
    
    public static List<AdminYksus> AdminYksus.findAllAdminYksuses() {
        return entityManager().createQuery("SELECT o FROM AdminYksus o", AdminYksus.class).getResultList();
    }
    
    public static AdminYksus AdminYksus.findAdminYksus(Long id) {
        if (id == null) return null;
        return entityManager().find(AdminYksus.class, id);
    }
    
    public static List<AdminYksus> AdminYksus.findAdminYksusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AdminYksus o", AdminYksus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
