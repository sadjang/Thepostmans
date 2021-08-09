/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wintime.dao;
import java.util.List;

import com.wintime.model.Droitlocal;

/**
 *
 * @author Administrateur
 */
public interface DroitService {
    public Droitlocal getDroit(String code);
    public List<Droitlocal>  getAllDroit(String CodeUser);
    public Droitlocal createDroit(Droitlocal droit);
    public List<Droitlocal>  getAllDroitUser(String CodeUser);
    public int insierDroit(String codeuser,String codedroi);

    public int deletDroit(String codeuser, String codedroit);
    List<Droitlocal> getAllDroit();
     public int deleteUser( String code) ;

    public int activeUser(String codeuser);

    public int desactiveUser(String codeuser);
}
