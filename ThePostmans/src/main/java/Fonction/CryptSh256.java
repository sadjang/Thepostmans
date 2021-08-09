/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fonction;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Administrateur
 */
public class CryptSh256 {
    private String data;
    public CryptSh256() {
        this.data = data;
    }
    public CryptSh256(String data) {
        this.data = data;
    }

    public String getData() {
       try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(data.getBytes());
            byte byteData[] = md.digest();
           //convertir le tableau de bits en une format hexadécimal - méthode 1
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            System.out.println("En format hexa : " + sb.toString());

            //convertir le tableau de bits en une format hexadécimal - méthode 2
            StringBuffer hexString = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                String hex = Integer.toHexString(0xff & byteData[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
             System.out.println("En format hexa : " + hexString.toString());
            data=hexString.toString();
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(CryptSh256.class.getName()).log(Level.SEVERE, null, ex);
        }
     return data;
    }
    
    
    
    
    
    
    
    
    
    public String convertFileToString(File file) throws IOException{
        byte[] bytes = Files.readAllBytes(file.toPath());   
        return new String(Base64.getEncoder().encode(bytes));
    }
    
    
    
    
}
