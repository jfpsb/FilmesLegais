package entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Filme {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String descricao;
	private String sinopse;
	private boolean cartaz;
	
	@ManyToOne
	private Genero genero;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public boolean isCartaz() {
		return cartaz;
	}

	public void setCartaz(boolean cartaz) {
		this.cartaz = cartaz;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}

	public int getId() {
		return id;
	}

	
}
