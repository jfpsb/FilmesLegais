package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import banco.Conexao;
import entidades.Preco;;

public class PrecoDAO {
	@SuppressWarnings("rawtypes")
	public List listarPreco() {
		Connection conn = new Conexao().getCon();

		List<Preco> dadosPreco;
		dadosPreco = new ArrayList<Preco>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT idpreco, descricao FROM preco";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int idpreco = rs.getInt("idpreco");
				String descricao = rs.getString("descricao");

				Preco preco = new Preco();
				preco.setId(idpreco);
				preco.setDescricao(descricao);
				dadosPreco.add(preco);
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
		
		return dadosPreco;		
	}
}
