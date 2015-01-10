package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import entidades.Filial;

public class FilialDAO {
	public List<Filial> listar() {
		Connection conn = new Conexao().getCon();

		List<Filial> dadosFilial;
		dadosFilial = new ArrayList<Filial>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT idfilial, estado FROM filial";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int idfilial = rs.getInt("idfilial");
				String estado = rs.getString("estado");

				Filial filial = new Filial();
				filial.setId(idfilial);
				filial.setEstado(estado);
				dadosFilial.add(filial);
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
		return dadosFilial;		
	}
}
