package bean;

import java.sql.Timestamp;
import java.util.List;

import javax.faces.bean.ManagedBean;

import dao.*;
import entidades.*;
import funcoes.Mensagens;

@ManagedBean(name = "vendaBean")
public class VendaBean {
	Filme filme = new Filme();
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

	public void setFilme(Filme filme) {
		this.filme = filme;
	}
	
	public void confirma(){
		bilheteria.setData(new Timestamp(System.currentTimeMillis()));
		System.out.println("Antes de ir pro banco: " + filme.getId());
		bilheteria.setIdfilme(filme.getId());
		new BilheteriaDAO().salvar(bilheteria);
		new Mensagens().INFO("Apenas Teste");
	}

	public Bilheteria getBilheteria() {
		return bilheteria;
	}

	public void setBilheteria(Bilheteria bilheteria) {
		this.bilheteria = bilheteria;
	}
}
