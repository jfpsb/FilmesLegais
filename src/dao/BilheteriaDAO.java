package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import banco.Conexao;
import entidades.Bilheteria;
import funcoes.Mensagens;

public class BilheteriaDAO {
	public void salvar (Bilheteria bilhete) {
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
			new Mensagens().INFO("Dados Salvos:\nFilme ID: " + bilhete.getIdfilme());
		} catch (SQLException e) {
			//Teste dos valores
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

}
