package modelo;
import java.sql.*;

/**
 *
 * @author nian
 */
public class AdministrarDatos extends Conexion{
    
    Connection con;
    
    public boolean agregar(Pedido p){
         try {
            PreparedStatement pst = con.prepareStatement("insert into pedidos values(?,?,?,?,(select codigo from productos),(select id from empleados;),?)");

            pst.setString(1, "0");
            pst.setString(2, p.getNombreCliente().trim());
            pst.setString(3, p.getDireccion().trim());
            pst.setString(4, p.getTelefono().trim());
            pst.setBoolean(5, p.getMetodoPago());
            pst.setInt(6, p.getCantidad());
            pst.setString(7, p.getCodProducto().trim());
            pst.setString(8, p.getIdEmpleado());            
            pst.setInt(9, p.getTotal());
            pst.executeUpdate();
            return true;

        } catch (Exception e) {
            System.out.println("Error: " + e);
            return false;
        }
    }
    
}
