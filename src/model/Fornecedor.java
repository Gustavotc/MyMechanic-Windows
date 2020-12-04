package model;

/*
 * @author Gustavo
 */

public class Fornecedor {
    
    private int id;
    private String nome;
    private String cnpj;
    private String telefone;
    private String email;
    private int fgAtivo;

    public Fornecedor() {
    }

    public Fornecedor(int id, String nome, String cnpj, String telefone, String email, int fgAtivo) {
        this.id = id;
        this.nome = nome;
        this.cnpj = cnpj;
        this.telefone = telefone;
        this.email = email;
        this.fgAtivo = fgAtivo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getFgAtivo() {
        return fgAtivo;
    }

    public void setFgAtivo(int fgAtivo) {
        this.fgAtivo = fgAtivo;
    }
    
    
    
}
