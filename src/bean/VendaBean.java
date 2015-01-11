package bean;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import dao.*;
import entidades.*;

@SessionScoped
@ManagedBean(name = "vendaBean")
public class VendaBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Filme filme = new Filme();
	Bilheteria bilheteria = new Bilheteria();
	int idfilial;

	public List<Sala> getListSala() {
		return new SalaDAO().listarCid(getIdfilial());
	}

	public int getIdfilial() {
		return idfilial;
	}

	public void setIdfilial(int idfilial) {
		this.idfilial = idfilial;
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
		bilheteria.setIdfilial(getIdfilial());
		new BilheteriaDAO().salvar(bilheteria);
	}
	
	public void onchange(){
		System.out.println(filme.getFilme());
	}
	
	public List<Filial> listarFilial () {
		return new FilialDAO().listar();
	}

}
