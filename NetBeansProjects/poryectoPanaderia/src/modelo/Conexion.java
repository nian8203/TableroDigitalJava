package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author nian
 */
public class Conexion {
    public Connection getConnection() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "8203");
            System.out.println("Conexion establecida");
            return con;
        } catch (Exception e) {
            System.out.println("Error"+e);
            return null;
        }        
    }    
}
