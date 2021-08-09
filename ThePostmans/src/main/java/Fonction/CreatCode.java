/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fonction;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Administrateur
 */
public class CreatCode {

    public CreatCode() {
    }
    
    public String getCode(){
        long millis = new java.util.Date().getTime();
        return "BIN"+millis;
    }
    
    public Date yesterday() {
      final Calendar cal = Calendar.getInstance();
       cal.add(Calendar.DATE, -1);
     return cal.getTime();
     }
     public Date today() {
      final Calendar cal = Calendar.getInstance();
       cal.add(Calendar.DATE, -0);
     return cal.getTime();
     }
     
    
}
