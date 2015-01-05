package bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean(name="indexBean")
@RequestScoped
public class IndexBean {
	public String abrirBilhet() {
		return "bilheteria";
	}
	
	public String abrirVenda() {
		return "venda";
	}
}
