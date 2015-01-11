package bean;

import java.util.List;

import javax.faces.bean.ManagedBean;

import dao.BilheteriaDAO;
import dao.FilialDAO;
import entidades.*;

@ManagedBean(name="bilheteBean")
public class BilheteriaBean {
	Bilheteria bilheteria = new Bilheteria();
	int mes, idestado;

	public int getMes() {
		return mes;
	}

	public void setMes(int mes) {
		this.mes = mes;
	}

	public Bilheteria getBilheteria() {
		return bilheteria;
	}

	public void setBilheteria(Bilheteria bilheteria) {
		this.bilheteria = bilheteria;
	}

	public int getIdestado() {
		return idestado;
	}

	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}	
	
	public List<Filial> listarEstado() {
		return new FilialDAO().listar();
	}
	
	public List<Bilheteria> pesquisa() {
		return new BilheteriaDAO().pesquisa(getMes(), getIdestado());
	}
	
	public List<Bilheteria> pesquisaGeral() {
		return new BilheteriaDAO().pesquisa();
	}
}
