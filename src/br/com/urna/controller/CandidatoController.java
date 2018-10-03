package br.com.urna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.urna.dao.CandidatoDAO;
import br.com.urna.entity.Candidato;
import br.com.urna.exception.KeyNotFoundException;

@Controller
@RequestMapping("candidato")
public class CandidatoController {

	@Autowired
	private CandidatoDAO dao;

	@GetMapping("cadastrar")
	public String abrir() {
		return "candidato/cadastro";
	}

	@GetMapping("listar")
	public ModelAndView listar(RedirectAttributes r) {
		return new ModelAndView("candidato/lista").addObject("candidatos", dao.listar());
	}

	@Transactional
	@PostMapping("cadastrar")
	public String cadastrar(Candidato candidato, RedirectAttributes r) {
		dao.inserir(candidato);
		r.addFlashAttribute("msg", "Candidato cadastrado!");
		return "redirect:/candidato/cadastrar";
	}

	@Transactional
	@PostMapping("excluir")
	public String excluir(int id, RedirectAttributes r) {
		try {
			dao.remover(id);
		} catch (KeyNotFoundException e) {
			r.addFlashAttribute("msg", "Ocorreu um erro dentro do sistema");
			e.printStackTrace();
		}
		r.addFlashAttribute("msg", "Candidato excluido!");
		return "redirect:candidato/listar";
	}
}
