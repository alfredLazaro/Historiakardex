/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java. util. Date;
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
           System.out.print(e.toString());
       }
    
    }
    //La carrera falta poner,
    
    public static boolean validarContraseniaAdmi(int codAd,String contraAdmin){
        boolean res=false;
        try{
            Statement sql=ConexionSQL.getConnetion().createStatement();
            String validacion="select * from Administrador \n" +
                   "WHERE codAd="+ codAd +" and contraAdmin='"+contraAdmin+"'";
            ResultSet resultado=sql.executeQuery(validacion);
            if(resultado.next()){
                res=true;
            }
        }catch(Exception e){
            System.out.println(e.toString());
        }
        
        return res;
    }
    
    
    public static boolean validarContraseniaEst(int codSis,String contraEst){
        boolean res=false;
        try{
            Statement sql=ConexionSQL.getConnetion().createStatement();
            String validacion="select codSis from Estudiante\n" +
                   "WHERE codSis="+ codSis +" and contraEst='"+ contraEst +"'";
            
            ResultSet resultado=sql.executeQuery(validacion);
            if(resultado.next()){
                res=true;
            }
        }catch(Exception e){
            System.out.println(e.toString());
        }
        
        
        return res;
    }
    
    public static String respuestaAlaSolicitud(int codSis,String carrera,String gestion){
        String res="La solicitud realizada no puede ser cumplida";
        try{
            Statement sql=ConexionSQL.getConnetion().createStatement();
            String consulta=
                    "  SELECT COUNT(e.codSis)as nro,gestion,n.codMat,nombMat,calif "
                    +" FROM Estudiante e,Materia m,Nota n "
                    +" WHERE e.codSis=n.codSis and m.codMat=n.codMat and " 
                    +   " e.codSis="+codSis +"and gestion='"+gestion+"' "
                    //+   "and carrera='"+carrera+"' "
                    +" GROUP BY e.codSis,gestion,n.codMat,nombMat,calif";
            //sql.execute(consulta);
            
            ResultSet resultado = sql.executeQuery(consulta);
            if(resultado.next()){
                res="nro  gestion  codMat    nombMat      calif" +"\n"
                        +resultado.getString(1) +"    |"+ resultado.getString(2) 
                        + "      |"+resultado.getString(3)+"      |"+resultado.getString(4)
                        +"|"+resultado.getString(5) + "\n";
            }
            
        }catch(Exception e){
            System.out.println(e.toString());
        }
        
        return res;
    }
    
    
    
}
