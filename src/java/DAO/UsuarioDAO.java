/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Salle
 */
import conexao.ConexaoBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Usuario;

public class UsuarioDAO {

    private static Connection conexao = ConexaoBD.getInstance().getConexao();

    public static void criaUsuario(Usuario user) throws SQLException {
        try (PreparedStatement sql = conexao.prepareStatement("INSERT INTO usuario VALUES(? ,? ,? ,? ,? ,? )")) {
            sql.setInt(1, user.getId());
            sql.setString(3, user.getEndereco());
            sql.setString(4, user.getTelefone());
            sql.setString(5, user.getEmail());
            sql.setString(2, user.getNome());
            sql.setString(6, user.getSenha());
            sql.executeUpdate();
        }
    }

    public static int retornaId() throws SQLException {
        int id = 0;
        try (PreparedStatement sql = conexao.prepareStatement("SELECT userId FROM usuario ORDER BY userId DESC LIMIT 1")) {
            ResultSet result = sql.executeQuery();
            if (result.next()) {
                id = result.getInt(1);
            }
        } catch (SQLException e) {
            
        }
        return id;
    }
    
    
    public static Usuario getUsuario(int id) throws SQLException {
        Usuario user = null;
        String nome, email, endereco, telefone, senha;
        try (PreparedStatement sql = conexao.prepareStatement("SELECT * FROM usuario WHERE userId = ?")) {
            sql.setInt(1, id);
            ResultSet resultado = sql.executeQuery();
            if (resultado.next()) {
                nome = resultado.getString("nome");
                email = resultado.getString("email");
                endereco = resultado.getString("endereco");
                telefone = resultado.getString("telefone");
                senha = resultado.getString("senha");
                user = new Usuario(nome, endereco, telefone, email, senha);
            }
        }
        return user;
    }
}
