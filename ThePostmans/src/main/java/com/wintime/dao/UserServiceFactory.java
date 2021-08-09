package com.wintime.dao;


/**
 *
 * @author Sadjang
 */
public class UserServiceFactory {
    public enum UserServiceType{
        USERPRELEVEMENT,COMPTEFICHIER,COMPTEAUTRE
    }
     private static UserServiceFactory instance=null;
     public static synchronized UserServiceFactory getInstance() {
        if (instance == null) {
            instance = new UserServiceFactory();
        }
        return instance;
    }
     private UserServiceFactory() {
     } 
     public UserService getAccountService(UserServiceType accountType) {
          System.out.println("users service ");
        if(accountType==UserServiceType.USERPRELEVEMENT){
            System.out.println("users service "+UserServiceType.USERPRELEVEMENT);
            return new UserDAO();
        }else{
            System.out.println("users service "+1);
            if(accountType==UserServiceType.COMPTEFICHIER){
            return null;
        }else{
                System.out.println("users service "+2);
             if(accountType==UserServiceType.COMPTEAUTRE){
                     return null;
        }else{
            System.out.println("users service "+3);
        }
        } 
        }
         return null;
         
    }
     
   
    

   

    
}