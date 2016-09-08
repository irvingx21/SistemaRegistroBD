/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Usuario
 */
public class Consultas extends Conexion {
    
    public boolean autentificacion(String cedula , String contraseña){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta="select * from usuario where  cedula =? and contraseña = ? ";
            pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            //pst.setString(1, usuario);
            pst.setString(1, cedula);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();
            
            if (rs.absolute(1)) {
                return true;
            }
      
        } catch (Exception e) {
            System.out.println("Error "+e);
        }finally{
            try {
                if(getConnection() != null)getConnection().close();
                if(pst != null)pst.close();
                if(rs != null)rs.close();
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        
     return false;   
    }
    
    public boolean registrar (String usuario,String nombre,String apellido,String cedula, String contraseña){
        
        PreparedStatement pst=null;
        try {
            String consulta="insert into usuario (usuario,nombre,apellido,cedula,contraseña) values (?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            //pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.setString(1, usuario);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, cedula);
            pst.setString(5, contraseña);
            
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
        }finally{
            try {
                if(getConnection()!=null)getConnection().close();
                if (pst != null) pst.close();
               
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        return false;
    }
    
    public static void main(String[] args) {
        Consultas co=new Consultas();
        //System.out.println(co.autentificacion("131306127-5", "123456"));
        //System.out.println(co.registrar("leox1","leonardo","ordoñez","131306127-5","123456"));
        
    }
    
}
