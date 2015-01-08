package banco;

import funcoes.*;

import java.io.Serializable;
import java.sql.*;

public class Conexao implements Serializable {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private String url = "jdbc:mysql://localhost/";
	private String banco = "filmeslegais";
	private String user = "root";
	private String password = ""; //1124
	
	public Conexao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url + "" + banco, user, password);
		} catch (ClassNotFoundException e) {	
			System.out.println("Driver SQL não encontrado!");
		} catch (SQLException e) {
			System.out.println("Acesso Negado! Verifque o caminho, ou o usuário e senha do Banco");
		}
	}

	public Connection getCon() {
		return con;
	}
	
	public void fecharCon (Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
