package entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Genero {

	@Id
	@GeneratedValue
	private int id;
	
	private String genero;
}