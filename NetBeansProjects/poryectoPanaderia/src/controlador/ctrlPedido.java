package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.Action;
import jdk.jfr.Event;
import modelo.AdministrarDatos;
import modelo.Empleado;
import modelo.Pedido;
import modelo.Producto;
import vista.FormPedidos;

/**
 *
 * @author nian
 */
public class ctrlPedido implements ActionListener{
    
    public AdministrarDatos adminDatos;
    public Pedido pedido;
    public Empleado empleado;
    public Producto producto;
    public FormPedidos formPedidos;    
   

    public ctrlPedido() {
    }

    public ctrlPedido(AdministrarDatos adminDatos, Pedido pedido, Empleado empleado, Producto producto, FormPedidos formPedidos) {
        this.adminDatos = adminDatos;
        this.pedido = pedido;
        this.empleado = empleado;
        this.producto = producto;
        this.formPedidos = formPedidos;
        this.formPedidos.btnAgregar.addActionListener(this);
        this.formPedidos.btnEliminar.addActionListener(this);
    }
    
    public void iniciar(){
        formPedidos.setLocationRelativeTo(null);
        formPedidos.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
        if (e.getSource() == formPedidos.btnAgregar) {
            pedido.setNombreCliente(formPedidos.btnAgregar.getText());
            pedido.setDireccion(formPedidos.btnAgregar.getText());
            pedido.setTelefono(formPedidos.btnAgregar.getText());
            pedido.setMetodoPago(true);
            pedido.setCantidad(Integer.parseInt(formPedidos.btnAgregar.getText()));
            
        }
    }
    
    
    
}
