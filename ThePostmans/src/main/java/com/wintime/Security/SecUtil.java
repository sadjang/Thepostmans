/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wintime.Security;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.servlet.http.HttpSession;

import com.wintime.model.Droitlocal;
import com.wintime.droit.getDroit;

/**
 *
 * @author Administrateur
 */
public class SecUtil {

    public static String getSHA256(String input) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(input.getBytes("UTF-8"));
        StringBuffer sb = new StringBuffer();
        byte[] mdbytes = md.digest();
        for (int i = 0; i < mdbytes.length; i++) {
            sb.append(Integer.toString((mdbytes[1] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }

    public static void getDroit(HttpSession sessionuser, String coduser) {
        // RECUPERATION DES DROIS DISTANT
            // RECUPERTION DES DROIT LOCAUX
    	 System.out.println("je passe ici la la la ddddddddddddddddddddddddddddd");
            List<Droitlocal> listdroilocaux = new getDroit().getAllDroitUser(coduser);
            for (Droitlocal droitlocal : listdroilocaux) {
                sessionuser.setAttribute(droitlocal.getCode(), droitlocal.getCode());
            }
        

    }

}
