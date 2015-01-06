package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import entidades.Filme;

public class FilmeDAO {
	@SuppressWarnings("rawtypes")
	public List listarFilme() {
		Connection conn = new Conexao().getCon();

		List<Filme> dadosFilme;
		dadosFilme = new ArrayList<Filme>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT idfilme, filme FROM filme WHERE cartaz = true";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int idfilme = rs.getInt("idfilme");
				String nomeFilme = rs.getString("filme");

				Filme filme = new Filme();
				filme.setId(idfilme);
				filme.setFilme(nomeFilme);
				dadosFilme.add(filme);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return dadosFilme;		
	}
}
