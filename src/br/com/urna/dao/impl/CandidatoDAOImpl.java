package br.com.urna.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.urna.dao.CandidatoDAO;
import br.com.urna.entity.Candidato;

@Repository
public class CandidatoDAOImpl extends GenericDAOImpl<Candidato, Integer> implements CandidatoDAO {

}
