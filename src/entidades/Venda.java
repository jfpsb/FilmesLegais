package entidades;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Venda {

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne
	private Sala sala;
	
	@ManyToOne
	private Filme filme;
	
	private Date date;
	
	
	
}
