package entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Filme {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String descricao;
	private double preco;
	private String sinopse;
	private boolean cartaz;
	
	@ManyToOne
	private Genero genero;

}
