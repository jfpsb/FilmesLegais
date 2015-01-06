package entidades;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="bilheteria")
public class Bilheteria {

	@Id
	@GeneratedValue
	@Column(name="idbilheteria")
	private int id;
	
	@ManyToOne
	@Column(name="idsala")
	private Sala sala;
	
	@ManyToOne
	@Column(name="idfilme")
	private Filme filme;
	
	@ManyToOne
	@Column(name="idpreco")
	private Preco preco;
	
	@Column(name="data")
	private Date date;

	public Sala getSala() {
		return sala;
	}

	public void setSala(Sala sala) {
		this.sala = sala;
	}

	public Filme getFilme() {
		return filme;
	}

	public void setFilme(Filme filme) {
		this.filme = filme;
	}

	public Preco getPreco() {
		return preco;
	}

	public void setPreco(Preco preco) {
		this.preco = preco;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}	
}