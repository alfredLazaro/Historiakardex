/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDeDatos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author javier
 */
public class ConsultasBD {
    
    //probado
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
            System.out.append(e.toString());
        }
        
        return res;
    }
    //probado
    public static boolean existeEstudiante(int codSis) {
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
            System.out.append(e.toString());
        }
        
        return res;
    }
    //probado
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
                            + " WHERE codSis="+codSis 
                    +"and gestionInscrip='"+gestion +"'"+")";
            ResultSet resultado = sql.executeQuery(consulta);
            if(resultado.next()){
                res= true;
            }
        }catch(SQLException e){
            System.out.append(e.toString());
        }
        
        return res;
    }
    //
    public static void registroDeNuevaSolicitud(int codSis,String motivo,
            String fechaEnvio, String carrera, String estado){
        
       try{
           Statement sql = ConexionSQL.getConnetion().createStatement();
           String update="INSERT INTO Umss.dbo.Formulario "
                   + " VALUES ("+ codSis +",'"+ motivo +"','"+ fechaEnvio +"'"
                   + ",'"+ carrera +"','"+ estado +"')";
                   
           sql.execute(update);
           
       }catch(SQLException e){
           System.out.print(e.toString());
       }
    
    }
    //probado
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
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        
        return res;
    }
    
    //probado
    public static boolean validarContraseniaEst(int codSis,String contraEst){
        boolean res=false;
        try{
            Statement sql=ConexionSQL.getConnetion().createStatement();
            String validacion="select codSis from Umss.dbo.Estudiante\n" +
                   "WHERE codSis="+ codSis +" and contraEst='"+ contraEst +"'";
            
            ResultSet resultado=sql.executeQuery(validacion);
            if(resultado.next()){
                res=true;
            }
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        
        
        return res;
    }
    //el estado 1 es que fue aceptado
    //el estado 2 es que no lo fue
    //el estado diferente de 1 y 2 esta en espera
    //probado ,,ojo deben realizar las validaciones nesesarias para que no se metan
    //respuestas incorrectas de parte del usuario.
    public static void actualizarEstadoFormulario(int codSis, int estado){
        try{
            String esta="";
            if(estado==1){
                esta="esAceptado";
            }else if(estado==0){
                esta="noAceptado";
            }else{
                esta="enProceso";
            }
            Statement sql=ConexionSQL.getConnetion().createStatement();
            String update=
                "update Umss.dbo.Formulario set esAceptada='"+esta +"' "
                + " where codSis="+ codSis;
            
            ResultSet res=sql.executeQuery(update);
            
        }catch(SQLException e){
            System.out.print(e.toString());
        }
    }
    //probado
    private static boolean consultaEstado(int codSis){
        boolean res=false;
        try {
            Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta="SELECT * FROM Umss.dbo.Formulario"
                        + " WHERE codSis="+ codSis +"and esAceptada= 'esAceptado'";
                
                ResultSet respuesta=sql.executeQuery(consulta);
                
                if(respuesta.next()){
                    res=true;  
                }
        }catch(SQLException e){
            System.out.print(e.toString());
        }
        return res;
    }
    //si res1==vacio significa que no hay tal consulta
    //probado
    public static ArrayList<String> respuestaAlaSolicitud(int codSis){
       
        String res="La solicitud realizada no puede ser cumplida";
        ArrayList<String> res1 = new ArrayList<>();
        if(consultaEstado(codSis)){
            try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta=
                       "SELECT COUNT(e.codSis)as nro,gestion,n.codMat,nombMat,calif"
                    + " FROM Umss.dbo.Estudiante e,Umss.dbo.Materia m,"
                        + "Umss.dbo.Nota n , Umss.dbo.carrera c "
                    + " WHERE e.codSis=n.codSis and m.codMat=n.codMat and"
                    + " e.codSis=c.codSis "
                    + " and nomCarrera=(SELECT carrera"
                                    + " FROM Umss.dbo.Formulario where codSis="+codSis +")"
                   +  "GROUP BY e.codSis,gestion,n.codMat,nom nobMat,calif; ";
                
                ResultSet resultado = sql.executeQuery(consulta);
                
                while(resultado.next()){
                    res1.add( resultado.getString(2) 
                            + "  |  "+resultado.getString(3)+"  |  "+resultado.getString(4)
                            + "  |  "+resultado.getString(5));
                    
                }
               
            }catch(SQLException e){
                System.out.println(e.toString());
            }
        }else{
            res="no puede obtener el Kardex"
                    + "debido a que no fue evaluada su solicitud aun.";
        }
        return res1;
    }
    /* Devuelve las notas para el kardex en caso de que la solicitud este aceptada */
    public static ArrayList<String> notasKardex(int codSis){
       
        ArrayList<String> res1 = new ArrayList<>();
        if(consultaEstado(codSis)){
            try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta=
                    "SELECT avg(calif) as promedio,n.codMat,gestion"
                        + " FROM Umss.dbo.Nota as n,Umss.dbo.Estudiante as e, Umss.dbo.Materia as m"
                        + " WHERE n.codSis=e.codSis and m.codMat=n.codMat and n.codSis="+codSis
                        + " GROUP BY n.codMat,n.gestion ";
		
                ResultSet resultado = sql.executeQuery(consulta);
                
                while(resultado.next()){
                    res1.add( "Nota: "+ resultado.getString(1) 
                            + "  |  Cod Materia: "+ resultado.getString(2)+"  |  Gestion: "+resultado.getString(3));
                }
            }catch(SQLException e){
                System.out.println(e.toString());
            }
        }else{
        }
        return res1;
    }
    
    //todavia esta a prueba
    public static ArrayList<String> devolCodSisSolicitantes(){
        ArrayList<String> res=new ArrayList<>();
        try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta=
                "SELECT codSis from Formulario "
                        + "where esAceptada='enProceso'";

                ResultSet resultado = sql.executeQuery(consulta);
                
                while(resultado.next()){
                    System.out.print(resultado.toString());
                    res.add(resultado.getString(1));
                }
                
            }catch(Exception e){
                System.out.println(e.toString());
            }
        return res;
    }
    
    public static boolean solicitudEnProc(int codSis){
        /* Verifica si la solicitud esta en proceso o aceptada para un codSis*/
        boolean solicito = false;
        try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta=
                "SELECT codSis from Umss.dbo.Formulario "
                        + "where (esAceptada='enProceso' or esAceptada='esAceptado') "
                                + "and codSis="+codSis;

                ResultSet resultado = sql.executeQuery(consulta);
                if(resultado.next()){
                    solicito = true;
                }
                
            }catch(Exception e){
                System.out.println(e.toString());
            }
        return solicito;
    }
    
    public static ArrayList<String> mostrarSolicitud(int codSis){
        ArrayList<String> datos=new ArrayList<String>();
        try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String consulta="select motivo,nomEst,apPat,apMat,fechRegist,nomCarrera "+
                        "from Formulario as f,Estudiante as e,carrera c "+
                        " where f.codSis=e.codSis and c.codSis=f.codSis and carrera=("+
                        "select carrera "+
                        "from formulario "+
                        "where " +
                         "codSis="+codSis+")";
                
                
                ResultSet resultado = sql.executeQuery(consulta);
                
                if(resultado.next()){
                    System.out.print(resultado.toString());
                    datos.add(resultado.getString(1));
                    System.out.println(datos.get(0) + ""+datos.size());
                    datos.add(resultado.getString(2));
                    System.out.println(datos.get(1) + ""+datos.size());
                    datos.add(resultado.getString(3));
                    System.out.println(datos.get(2) + ""+datos.size());
                    datos.add(resultado.getString(4));
                    
                    datos.add(resultado.getString(5));
                    datos.add(resultado.getString(6));
                    System.out.println(datos + ""+datos.size());
                }
            }catch(Exception e){
                System.out.println(e.toString());
            }
        return datos;
    }
    public static void eliminarAceptados(int codSis){
            try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String elimina="DELETE FROM Umss.dbo.Formulario "
                                + "where esAceptada LIKE 'esAceptado' "
                                + "and codSis="+codSis;

                sql.execute(elimina);
                
            }catch(Exception e){
                System.out.println(e.toString());
            }
    }
    public static void eliminarRechazados(int codSis){
            try{
                Statement sql=ConexionSQL.getConnetion().createStatement();
                String elimina="DELETE FROM Umss.dbo.Formulario "
                                + "where esAceptada LIKE 'noAceptado' "
                                + "and codSis="+codSis;

                sql.execute(elimina);
                
            }catch(Exception e){
                System.out.println(e.toString());
            }
    }
}
