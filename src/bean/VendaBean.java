package bean;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import dao.FilmeDAO;
import dao.PrecoDAO;
import dao.SalaDAO;
import entidades.Filme;
import entidades.Preco;
import entidades.Sala;
import funcoes.Mensagens;

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
	
	public void confirma(){
		new Mensagens().INFO("Apenas Teste");
	}

}
