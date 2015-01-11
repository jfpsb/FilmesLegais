package dao;

import java.sql.*;
import java.util.*;

import banco.Conexao;
import entidades.*;
import funcoes.Mensagens;

public class BilheteriaDAO {
	public void salvar(Bilheteria bilhete) {
		Connection conn = new Conexao().getCon();
		PreparedStatement insereSt = null;

		String sql = "INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data, fk_idfilial) VALUES (?, ?, ?, ?, ?)";

		try {
			insereSt = conn.prepareStatement(sql);
			insereSt.setLong(1, bilhete.getIdsala());
			insereSt.setLong(2, bilhete.getIdfilme());
			insereSt.setLong(3, bilhete.getIdpreco());
			insereSt.setTimestamp(4, bilhete.getData());
			insereSt.setLong(5, bilhete.getIdfilial());
			insereSt.executeUpdate();
			System.out.println("Salvo com sucesso.");
			new Mensagens().INFO("Dados Salvos:\nFilme ID: "
					+ bilhete.getIdfilme());
		} catch (SQLException e) {
			// Teste dos valores
			System.out.println("Salvo sem sucesso.");
			new Mensagens().FATAL("Houve um erro ao salvar os dados!");
		} finally {
			try {
				insereSt.close();
				conn.close();
			} catch (Throwable e) {
				System.out.println("Erro ao fechar conexão.");
				e.printStackTrace();
			}
		}
	}

	public List<Bilheteria> pesquisa(int mes, int idfilial) {
		Connection conn = new Conexao().getCon();

		List<Bilheteria> dadosBilhete;
		dadosBilhete = new ArrayList<Bilheteria>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT filme, SUM(preco) FROM bilheteria, preco, filme WHERE fk_idpreco = idpreco AND fk_idfilme = idfilme AND MONTH(data) = " + mes + " AND fk_idfilial = " + idfilial + " GROUP BY filme ORDER BY sum(preco) DESC LIMIT 10";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				String filme = rs.getString("filme");
				double preco = rs.getDouble("SUM(preco)");

				Bilheteria bilhete = new Bilheteria();
				bilhete.setFilme(filme);
				bilhete.setPreco(preco);
				dadosBilhete.add(bilhete);
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

		return dadosBilhete;
	}

	public List<Bilheteria> pesquisa() {
		Connection conn = new Conexao().getCon();

		List<Bilheteria> dadosBilhete;
		dadosBilhete = new ArrayList<Bilheteria>();

		try {
			Statement stmt = conn.createStatement();
			String query = "SELECT filme, SUM(preco) FROM bilheteria, preco, filme WHERE fk_idpreco = idpreco AND fk_idfilme = idfilme GROUP BY filme ORDER BY sum(preco) DESC LIMIT 10";
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				String filme = rs.getString("filme");
				double preco = rs.getDouble("SUM(preco)");

				Bilheteria bilhete = new Bilheteria();
				bilhete.setFilme(filme);
				bilhete.setPreco(preco);
				dadosBilhete.add(bilhete);
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

		return dadosBilhete;
	}
}
