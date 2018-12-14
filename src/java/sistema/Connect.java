package sistema;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ferdi_sgdm2l2
 */
public class Connect {
    
    public static Connection getConexao() throws SQLException {
        
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }
            /** Obtendo a conexao com o banco de dados*/
        Connection conn;
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sigest", "postgres", "Ferd#2107");
        
        return conn;
    }
    
    public static void main(String args[]) throws ClassNotFoundException, SQLException {
        
        System.out.println(Connect.getConexao());
    }
}
