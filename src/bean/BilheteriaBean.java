package bean;

import javax.faces.bean.ManagedBean;

@ManagedBean(name="bilheteriaBean")
public class BilheteriaBean {
	public String abrir () {
		return "bilheteria";
	}
}
