/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Form;

import User.*;

/**
 *
 * @author karno
 */

public class UserID { 
    private static String kd; 
//private static String level: 
    public static void setUserLogin(String kode) { 
    UserID.kd  = kode; 
    } 
public static String getUserLogin() { 
    return kd; 
    }
}