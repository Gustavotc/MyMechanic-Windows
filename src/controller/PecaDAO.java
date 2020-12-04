package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Peca;

/*
 * @author Gustavo
 */

public class PecaDAO {
    
    private final Connection con;      //conexão com o banco
    private PreparedStatement cmd;     //comando que será enviado para o BD
    
    public PecaDAO(){
        this.con = Conexao.conectar();
    }
    
    //Método para Cadastrar Peça
     public int inserir(Object obj){
        try {
            Peca p = (Peca)obj;
            String SQL =  "insert into tb_peca (nome, quantidade, valorunitario, fg_ativo) values(?,?,?,?)";
            
            cmd = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            cmd.setString(1, p.getNome());
            cmd.setInt(2, p.getQuantidade());
            cmd.setDouble(3, p.getValorUnitario());
            cmd.setInt(4, p.getFgAtivo());
            
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
    
     
     //Método para buscar Peça por Nome
     public List<Object> pesquisarPorNome(String nome){
        
        try {
            String SQL = "select * from tb_peca where nome ilike ? order by nome";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, "%" + nome +"%");
            
            List<Object> res = new ArrayList<>();
            
            //executar a consulta
            ResultSet rs = cmd.executeQuery();
            while ( rs.next() ){
                Peca p = new Peca();
                p.setId(rs.getInt("id"));
                p.setNome(rs.getString("nome"));
                p.setQuantidade(rs.getInt("quantidade"));
                p.setValorUnitario(rs.getDouble("valorunitario"));
                p.setFgAtivo(rs.getInt("fg_ativo"));
                res.add(p);
            }
            return res;
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return null;
        }finally{
            Conexao.desconectar(con);
        }
    }
     
    //Método para atualizar Peça
    public int atualizar(Object obj){
        try {
            Peca p = (Peca)obj;
            String SQL = "update tb_peca set nome=?, quantidade=?, "
                    + " valorunitario=?, fg_ativo=? where id=?";
            
            cmd = con.prepareStatement(SQL);
            cmd.setString(1, p.getNome());
            cmd.setInt(2, p.getQuantidade());
            cmd.setDouble(3, p.getValorUnitario());
            cmd.setInt(4, p.getFgAtivo());            
            cmd.setInt(5, p.getId());
            
            return cmd.executeUpdate() > 0 ? p.getId() : -1;
            
        } catch (SQLException e) {
            System.err.println("ERRO: " + e.getMessage());  
            return -1;
        }finally{
            Conexao.desconectar(con);
        }
    }    
}
