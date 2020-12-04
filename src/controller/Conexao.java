package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * @author Gustavo
 */

public class Conexao {
    
    //Parâmetros
    private static final String HOST = "127.0.0.1:5432";
    private static final String USUARIO = "postgres";
    private static final String SENHA = "admin";
    private static final String DATABASE = "MINHA_OFICINA";
    
    //String de conexão
    private static final String URL = "jdbc:postgresql://" + HOST + "/" + DATABASE;
    private static final String DRIVER = "org.postgresql.Driver";
    
    public static Connection conectar(){
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USUARIO, SENHA);
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("ERRO: " + e.getMessage());
            return null;
        }
    }
    
    public static void desconectar(Connection con){
        try {
            if (con != null){
                con.close();
            }
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());
        }
    }
    
    // 
    // TESTE DE CONEXÃO
    //
    public static void main(String[] args) {
        Connection con = Conexao.conectar();
        if ( con != null){
            System.out.println("Conexão realizada com sucesso!");
        }
    }
    
}

