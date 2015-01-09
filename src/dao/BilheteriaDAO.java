package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import banco.Conexao;
import entidades.Bilheteria;

public class BilheteriaDAO {
	public void salvar (Bilheteria bilhete) {
		Connection conn = new Conexao().getCon();
		PreparedStatement insereSt = null;
		
		String sql = "INSERT INTO bilheteria (idsala, idfilme, idpreco, data) VALUES (?, ?, ?, ?)";
		
		try {
			insereSt = conn.prepareStatement(sql);
			insereSt.setLong(1, bilhete.getIdsala());
			insereSt.setLong(2, bilhete.getIdfilme());
			insereSt.setLong(3, bilhete.getIdpreco());
			insereSt.setTimestamp(4, bilhete.getData());
			insereSt.executeUpdate();
			System.out.println("Salvo com sucesso.");
		} catch (SQLException e) {
			System.out.println("Salvo sem sucesso." + bilhete.getIdfilme() + bilhete.getIdsala() + bilhete.getIdpreco() + bilhete.getData());
			e.printStackTrace();
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
