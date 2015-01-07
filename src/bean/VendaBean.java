package bean;

import java.util.List;

import javax.faces.bean.ManagedBean;

import dao.*;
import entidades.*;

@ManagedBean(name = "vendaBean")
public class VendaBean {

	List<Sala> listSala;
	List<Filme> listfilme;
	List<Preco> listPreco;

	Filme filme = new Filme();

	public List<Sala> getListSala() {
		return new SalaDAO().listarCid();
	}

	@SuppressWarnings("unchecked")
	public List<Filme> getListfilme() {
		return new FilmeDAO().listarFilme();
	}

	@SuppressWarnings("unchecked")
	public List<Preco> getListPreco() {
		return new PrecoDAO().listarPreco();
	}

	public Filme getFilme() {
		return filme;
	}

	public void setFilme(Filme filme) {
		this.filme = filme;
	}

}
