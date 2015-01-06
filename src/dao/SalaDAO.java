package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import entidades.*;

public class SalaDAO {
	public List<Sala> listarCid() {
		Connection conn = new Conexao().getCon();

		List<Sala> dadosSala;
		dadosSala = new ArrayList<Sala>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT cidade, idsala FROM sala";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int idsala = rs.getInt("idsala");
				String cidade = rs.getString("cidade");

				Sala sala = new Sala();
				sala.setId(idsala);
				sala.setCidade(cidade);
				dadosSala.add(sala);
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
		
		return dadosSala;		
	}
}
