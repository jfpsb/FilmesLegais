package entidades;

import java.io.Serializable;
//Timestamp salva a data + hora, usado em banco de dados
import java.sql.Timestamp;

public class Bilheteria implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id, idsala, idfilme, idpreco, idfilial;
	private Timestamp data;
	private String filme;
	private double preco;
	
	public String getFilme() {
		return filme;
	}
	public void setFilme(String filme) {
		this.filme = filme;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public int getIdfilial() {
		return idfilial;
	}
	public void setIdfilial(int idfilial) {
		this.idfilial = idfilial;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdsala() {
		return idsala;
	}
	public void setIdsala(int idsala) {
		this.idsala = idsala;
	}
	public int getIdfilme() {
		return idfilme;
	}
	public void setIdfilme(int idfilme) {
		this.idfilme = idfilme;
	}
	public int getIdpreco() {
		return idpreco;
	}
	public void setIdpreco(int idpreco) {
		this.idpreco = idpreco;
	}
	public Timestamp getData() {
		return data;
	}
	public void setData(Timestamp timestamp) {
		this.data = timestamp;
	}	
}