package br.com.projeto.modelo.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.projeto.modelo.dominios.Corretor;

public interface RepositorioCorretor extends JpaRepository<Corretor, Integer> {
	

		@Query("select c from Corretor c where c.codigo = ?")
		Corretor findByCodigo(Integer codigo);

		@Query("select c from Corretor c where c.id = ?")
		Corretor findById(Long id);
		
		//@Query("SELECT a FROM Album a WHERE a.nome LIKE %:nome%")
		//List<Album> findByNome(@Param("nome")String nome);

}
