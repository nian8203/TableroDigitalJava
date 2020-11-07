package modelo;

import java.util.Date;
import java.util.List;

/**
 *
 * @author nian
 */
public class Pedido {
    
    private String nombreCliente;
    private String direccion;
    private String telefono;
    private boolean metodoPago;
    private int cantidad;
    private String codProducto;
    private String idEmpleado;
    private List Productos;
    private int total;
    

    public String getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(String codProducto) {
        this.codProducto = codProducto;
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }
    
    

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public List getProductos() {
        return Productos;
    }

    public void setProductos(List Productos) {
        this.Productos = Productos;
    }   

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public boolean getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(boolean metodoPago) {
        this.metodoPago = metodoPago;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    

   
    
       
}
