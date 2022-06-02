package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;




public class Persona {
    
    Connection cnn;
    Statement state;
    ResultSet result;
    
    String dui;
    String apellidos;
    String nombres;
    
     public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    

    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", "");
            System.out.print("Conexion Exitosa");
        } catch (ClassNotFoundException ex) {   
            System.out.print("Error de Conexcion");
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void main(String[] args) {
        Persona objeto = new Persona();
        
        objeto.dui="5555";
        objeto.apellidos="melgar";
        objeto.nombres="abigail";
        System.out.print (objeto.insertarDatos());
        
    }
    
    
    public boolean insertarDatos () {
        System.out.print("hola");
        try {
            String miQuery = "insert into tb_persona values ('" + dui + "', '" + apellidos + "', '" + nombres + "');";
            int estado = 0;
            state = cnn.createStatement();
            estado = state.executeUpdate (miQuery);
            if(estado == 1) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

   
    
    
}

