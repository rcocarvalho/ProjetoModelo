package br.com.projeto.modelo.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.projeto.modelo.dominios.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long> {

	Usuario findByUsername(String username);

}
