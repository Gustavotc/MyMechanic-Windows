package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Fornecedor;

/*
 * @author Gustavo
 */

public class FornecedorDAO {
    
    private final Connection con;      //conexão com o banco
    private PreparedStatement cmd;     //comando que será enviado para o BD
    
    public FornecedorDAO(){
        this.con = Conexao.conectar();
    }
    
    
    //Método para Cadastrar Fornecedor
     public int inserir(Object obj){
        try {
            Fornecedor f = (Fornecedor)obj;
            String SQL =  "insert into tb_fornecedor (nome, cnpj, telefone, email, fg_ativo) values(?,?,?,?,?)";
            
            cmd = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            cmd.setString(1, f.getNome());
            cmd.setString(2, f.getCnpj());
            cmd.setString(3, f.getTelefone());
            cmd.setString(4, f.getEmail());
            cmd.setInt(5, f.getFgAtivo());
            
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
    
     
     //Método para buscar Fornecedor por Nome
     public List<Object> pesquisarPorNome(String nome){
        
        try {
            String SQL = "select * from tb_fornecedor where nome ilike ? order by nome";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, "%" + nome +"%");
            
            List<Object> res = new ArrayList<>();
            
            //executar a consulta
            ResultSet rs = cmd.executeQuery();
            while ( rs.next() ){
                Fornecedor f = new Fornecedor();
                f.setId(rs.getInt("id"));
                f.setNome(rs.getString("nome"));
                f.setCnpj(rs.getString("cnpj"));
                f.setTelefone(rs.getString("telefone"));
                f.setEmail(rs.getString("email"));
                f.setFgAtivo(rs.getInt("fg_ativo"));
                res.add(f);
            }
            return res;
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return null;
        }finally{
            Conexao.desconectar(con);
        }
    }
     
    //Método para atualizar Fornecedor
    public int atualizar(Object obj){
        try {
            Fornecedor f = (Fornecedor)obj;
            String SQL = "update tb_fornecedor set nome=?, cnpj=?, "
                    + " telefone=?, email=?, fg_ativo=? where id=?";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, f.getNome());
            cmd.setString(2, f.getCnpj());
            cmd.setString(3, f.getTelefone());
            cmd.setString(4, f.getEmail());
            cmd.setInt(5, f.getFgAtivo());            
            cmd.setInt(6, f.getId());
            
            return cmd.executeUpdate() > 0 ? f.getId() : -1;
            
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return -1;
        }finally{
            Conexao.desconectar(con);
        }
    }    
}
