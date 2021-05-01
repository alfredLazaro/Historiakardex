/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author javier
 */
public class ConsultasBD {
    
    public static boolean existeAdministrador(int codAd){
        boolean res=false;
          try{ 
            Statement sql = ConexionSQL.getConnetion().createStatement();

            String consulta = "SELECT * "
                    + "FROM Umss.dbo.Administrador "
                    + "WHERE codAd="+codAd +" AND "
                        + " codAd IN ("
                            + " SELECT codAd "
                            + " FROM Umss.dbo.Administrador "
                            + " WHERE codAd="+codAd+
                            ")";
            ResultSet resultado = sql.executeQuery(consulta);
            if(resultado.next()){
                res= true;
            }
        }catch(SQLException e){
            System.out.append(e.toString() +"linea 35 CosultaBD");
        }
        
        return res;
    }
    
    public static boolean existeEstudiante(int codSis) throws SQLException{
        boolean res=false;
        try{ 
            Statement sql = ConexionSQL.getConnetion().createStatement();

            String consulta = "SELECT * "
                    + "FROM Umss.dbo.Estudiante "
                    + "WHERE codSis="+codSis+" AND "
                        + " codSis IN ("
                            + " SELECT codSis "
                            + " FROM Umss.dbo.Estudiante "
                            + " WHERE codSis="+codSis+
                            ")";
            ResultSet resultado = sql.executeQuery(consulta);
            if(resultado.next()){
                res= true;
            }
        }catch(SQLException e){
            System.out.append(e.toString() +"linea 59 CosultaBD");
        }
        
        return res;
    }
    
    public static boolean estudianteEstaMatriculado(int codSis, String gestion){
        boolean res=false;
        try{ 
            Statement sql = ConexionSQL.getConnetion().createStatement();

            String consulta = "SELECT * "
                    + "FROM Umss.dbo.Estudiante "
                    + "WHERE codSis="+codSis +" AND"
                        + " codSis IN ("
                            + " SELECT codSis "
                            + " FROM Umss.dbo.Inscripciones "
                            + " WHERE codSis="+codSis+
                            ")";
            ResultSet resultado = sql.executeQuery(consulta);
            if(resultado.next()){
                res= true;
            }
        }catch(SQLException e){
            System.out.append(e.toString()+"linea 83 CosultaBD");
        }
        
        return res;
    }
    
    //de que tipo sera la solicitud?
    //
    public static void registroDeNuevaSolicitud(int codSis,String motivo,
            String fecha){
       try{
           Statement sql = ConexionSQL.getConnetion().createStatement();
           String update="INSERT INTO Umss.dbo.Formulario "
                   + " VALUES ("+codSis +",'"+ motivo +"','"+ fecha +"')";
                   
           sql.execute(update);
           
       }catch(SQLException e){
           System.out.print(e.toString()+"en la linea 101 ");
       }
    
    }
    //dar la solicitud deseada
    public static boolean respuestaAlaSolicitud(){
        boolean res=false;
        
        return res;
    }
    
    
    
}
