package br.com.urna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity(name = "Candidato")
@Table(name = "T_URNA_CANDIDATO")
@SequenceGenerator(name = "candidato", sequenceName = "SQ_T_URNA_CANDIDATO", allocationSize = 1, initialValue = 1)
public class Candidato {
	@Id
	@Column(name = "id_candidato")
	@GeneratedValue(generator = "candidato", strategy = GenerationType.SEQUENCE)
	private int id;

	private String nome;

	private String proposta;

	private boolean corrupto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getProposta() {
		return proposta;
	}

	public void setProposta(String proposta) {
		this.proposta = proposta;
	}

	public boolean isCorrupto() {
		return corrupto;
	}

	public void setCorrupto(boolean corrupto) {
		this.corrupto = corrupto;
	}
}
