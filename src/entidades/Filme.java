package entidades;

import java.io.Serializable;

public class Filme implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String filme;
	private String sinopse;
	private boolean cartaz;
	
	private Genero genero;

	public String getFilme() {
		return filme;
	}

	public void setFilme(String filme) {
		this.filme = filme;
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

	public void setId(int id) {
		this.id = id;
	}	
}
