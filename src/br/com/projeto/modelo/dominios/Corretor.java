package br.com.projeto.modelo.dominios;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "cor_corretores")
public class Corretor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cor_id")
	private Long id;
	
	@Column(name = "cor_codigo")
	@NotNull(message = "O código é obrigatório")
	private Integer codigo;
	
	@NotNull(message = "O nome é obrigatório")
	@NotEmpty(message = "O nome é obrigatório")
	@Size(min = 4, max = 30, message = "O nome do corretor deve conter entre 4 e 30 caracteres")
	@Column(name = "cor_nome", length = 30, nullable = false)
	private String nome;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
