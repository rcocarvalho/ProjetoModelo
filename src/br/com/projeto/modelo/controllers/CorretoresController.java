package br.com.projeto.modelo.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.projeto.modelo.dominios.Corretor;
import br.com.projeto.modelo.repositorios.RepositorioCorretor;

@Controller
@RequestMapping("/corretores")
public class CorretoresController {

	@Autowired
	private RepositorioCorretor repositorio;
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("corretor", new Corretor());
		return "corretor.adicionar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("corretor") Corretor corretorNovo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "corretor.adicionar.tiles";
		}
	    Corretor corretorBusca = repositorio.findByCodigo(corretorNovo.getCodigo());
	    if (corretorBusca != null) {
	        model.addAttribute("corretor", corretorBusca);
	    } else {
	       model.addAttribute("corretor", corretorNovo);	       
	    } 
	    return "corretor.adicionarDados.tiles";
	}
	
	@RequestMapping(value = "/adicionarDados", method = RequestMethod.POST)
	public String adicionarsalvar(@ModelAttribute("corretor") @Valid Corretor corretorNovo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "corretor.adicionarDados.tiles";
		}
		model.addAttribute("corretor", corretorNovo);
		repositorio.save(corretorNovo);
		return "redirect:/corretores/adicionar";		
	}	


}
