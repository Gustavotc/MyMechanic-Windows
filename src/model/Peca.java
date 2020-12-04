package model;

/*
 * @author Gustavo
 */

public class Peca {
    
    private int id;
    private String nome;
    private int quantidade;
    private double valorUnitario;
    private int fgAtivo;

    public Peca() {
    }

    public Peca(int id, String nome, int quantidade, double valorUnitario, int fgAtivo) {
        this.id = id;
        this.nome = nome;
        this.quantidade = quantidade;
        this.valorUnitario = valorUnitario;
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

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getValorUnitario() {
        return valorUnitario;
    }

    public void setValorUnitario(double valorUnitario) {
        this.valorUnitario = valorUnitario;
    }

    public int getFgAtivo() {
        return fgAtivo;
    }

    public void setFgAtivo(int fgAtivo) {
        this.fgAtivo = fgAtivo;
    }

}
