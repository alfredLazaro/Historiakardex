/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;

/**
 *
 * @author javier
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionSQL {
    public static Connection getConnetion(){
        String conexionURL = "jdbc:sqlserver://localhost:1433;"
                + "database=Umss;" 
                + "user=alfred;"
                + "password=alfred123;"//javier2Javier!;" //contraseña de usuario sa
                + "loginTimeout=30;";
        try{
            Connection con = DriverManager.getConnection(conexionURL);
            System.out.println("se conecto");
            return con;
        }catch(SQLException ex){
            System.out.println(ex.toString());
            System.out.println("no se llego a conectar");
            return null;
        }
    }
}
