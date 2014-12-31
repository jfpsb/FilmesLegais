package entidades;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Registro {

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne
	private Filme filme;
	
	private Date date;
	private int count;
}
