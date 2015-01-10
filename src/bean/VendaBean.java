package bean;

import java.sql.Timestamp;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import dao.*;
import entidades.*;

@SessionScoped
@ManagedBean(name = "vendaBean")
public class VendaBean {
	private Filme filme = new Filme();
	Bilheteria bilheteria = new Bilheteria();

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

	public void setFilme(Filme f) {
		this.filme = f;
	}
	
	public Bilheteria getBilheteria() {
		return bilheteria;
	}

	public void setBilheteria(Bilheteria bilheteria) {
		this.bilheteria = bilheteria;
	}

	public void confirma() {
	
		bilheteria.setData(new Timestamp(System.currentTimeMillis()));

		bilheteria.setIdfilme(filme.getId());
		new BilheteriaDAO().salvar(bilheteria);

		bilheteria = new Bilheteria();
		filme = new Filme();
	}
	
	public void onchange(){
		System.out.println(filme.getFilme());
	}

}
