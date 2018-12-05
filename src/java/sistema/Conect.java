/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.kohsuke.rngom.digested.Main;

/**
 *
 * @author ferdi_sgdm2l2
 */
public class Conect {
    
    public static Connection getConexao() throws SQLException {
        
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
            /** Obtendo a conexao com o banco de dados*/
        Connection conn;
        conn = DriverManager.getConnection("jdbc:postgresql://10.5.0.130:5432/sigest", "postgres", "postgres123");
        
        return conn;
    }
    
    public static void main(String args[]) throws ClassNotFoundException, SQLException {
        
        System.out.println(Conect.getConexao());
    }
}
