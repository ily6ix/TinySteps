/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.ejb.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.Parent;

/**
 *
 * @author user
 */
@Stateless
public class ParentFacade extends AbstractFacade<Parent> implements ParentFacadeLocal {

    @PersistenceContext(unitName = "CrecheEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ParentFacade() {
        super(Parent.class);
    }
    
}
