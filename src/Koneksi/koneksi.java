/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Koneksi;
import java.sql.*;
/**
 *
 * @author karno
 */
public class koneksi {
    private Connection koneksi; 
    public Connection connect () { 
        try{ 
            Class.forName("com.mysql.jdbc.Driver"); 
            System.out.println("berhasil kõnek"); 
        }
        catch (ClassNotFoundException ex) { 
            System.out.println("gagal koneksi"+ex); 
        } 
        String url = "jdbc:mysql://localhost/Aplikasi Penjualan/penjualan";
        try{
            koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/penjualan", "root", "");
            System.out.println("berhasil koneksi database"); 
        }
        catch (SQLException ex) { 
            System.out.println("gagal koneksi database"+ex); 
        }
        return koneksi;
    }
}