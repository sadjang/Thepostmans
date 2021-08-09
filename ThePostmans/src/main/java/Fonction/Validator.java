/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fonction;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONException;
import org.json.JSONObject;
/**
 *
 * @author Administrateur
 */
public class Validator {
    private Pattern pattern;
    private Matcher matcher;
    
    private static final String PASSWORD_PATTERN = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,})";
     
    public Validator() {
        pattern = Pattern.compile(PASSWORD_PATTERN);
    }
 
    public boolean validatepassword(final String password) {
       matcher = pattern.matcher(password);
        return matcher.matches();
 
    }
    public  static String recursekeys(JSONObject jObj,String findkey)throws JSONException{
        String finalVlue="";
        if(jObj==null){
            return "";
        }
        Iterator<String> keyItr=jObj.keys();
        Map<String,String>map=new HashMap<>();
        while (keyItr.hasNext()){
            String key=keyItr.next();
            map.put(key,jObj.getString(key));
        }
        for(Map.Entry<String,String>e:(map).entrySet()){
            String key=e.getKey();
            if(key.equalsIgnoreCase(findkey)){
                return  jObj.getString(key);
            }
            // read value
            Object value=jObj.get(key);
            if(value instanceof JSONObject){
                finalVlue=recursekeys((JSONObject)value,findkey);

            }
        }
        // key is not found
        return finalVlue;
    }

    
}
