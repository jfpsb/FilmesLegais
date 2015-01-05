package bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean(name="vendaBean")
@RequestScoped
public class VendaBean {
	public String abrir() {
		return "venda";
	}
}
