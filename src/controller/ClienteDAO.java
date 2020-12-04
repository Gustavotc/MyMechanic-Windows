package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;

/*
 * @author Gustavo
 */

public class ClienteDAO {
    
    private final Connection con;      //conexão com o banco
    private PreparedStatement cmd;     //comando que será enviado para o BD
    
    public ClienteDAO(){
        this.con = Conexao.conectar();
    }
    
    
    //Método para Cadastrar Cliente
     public int inserir(Object obj){
        try {
            Cliente c = (Cliente)obj;
            String SQL =  "insert into tb_cliente (nome, cpf, telefone, email, fg_ativo) values(?,?,?,?,?)";
            
            cmd = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            cmd.setString(1, c.getNome());
            cmd.setString(2, c.getCpf());
            cmd.setString(3, c.getTelefone());
            cmd.setString(4, c.getEmail());
            cmd.setInt(5, c.getFgAtivo());
            
            if (cmd.executeUpdate() > 0){
                ResultSet rs = cmd.getGeneratedKeys();
                return rs.next() ? rs.getInt(1) : -1;
            }
            
            return -1;
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return -1;
        }finally{
            Conexao.desconectar(con);
        }
    }
    
     
     //Método para buscar Cliente por Nome
     public List<Object> pesquisarPorNome(String nome){
        
        try {
            String SQL = "select * from tb_cliente where nome ilike ? order by nome";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, "%" + nome +"%");
            
            List<Object> res = new ArrayList<>();
            
            //executar a consulta
            ResultSet rs = cmd.executeQuery();
            while ( rs.next() ){
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setCpf(rs.getString("cpf"));
                cli.setTelefone(rs.getString("telefone"));
                cli.setEmail(rs.getString("email"));
                cli.setFgAtivo(rs.getInt("fg_ativo"));
                res.add(cli);
            }
            return res;
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return null;
        }finally{
            Conexao.desconectar(con);
        }
    }
     
    //Método para atualizar Cliente
    public int atualizar(Object obj){
        try {
            Cliente c = (Cliente)obj;
            String SQL = "update tb_cliente set nome=?, cpf=?, "
                    + " telefone=?, email=?, fg_ativo=? where id=?";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, c.getNome());
            cmd.setString(2, c.getCpf());
            cmd.setString(3, c.getTelefone());
            cmd.setString(4, c.getEmail());
            cmd.setInt(5, c.getFgAtivo());            
            cmd.setInt(6, c.getId());
            
            return cmd.executeUpdate() > 0 ? c.getId() : -1;
            
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return -1;
        }finally{
            Conexao.desconectar(con);
        }
    }    
}
