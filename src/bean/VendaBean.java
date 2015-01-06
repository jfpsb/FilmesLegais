package bean;

import java.util.List;

import javax.faces.bean.ManagedBean;

import dao.*;
import entidades.*;

@ManagedBean(name="vendaBean")
public class VendaBean {
	
	PrecoDAO precoDAO = new PrecoDAO();
	FilmeDAO filmeDAO = new FilmeDAO();
	SalaDAO salaDAO = new SalaDAO();
	
	public List<Sala> listarCid() {
		 return salaDAO.listarCid();
	}
	
	@SuppressWarnings("unchecked")
	public List<Filme> listarFilme() {
		return filmeDAO.listarFilme();
	}
	
	@SuppressWarnings("unchecked")
	public List<Preco> listarPreco() {
		 return precoDAO.listarPreco();
	}
}
