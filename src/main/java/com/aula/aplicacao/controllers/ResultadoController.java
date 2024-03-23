package com.aula.aplicacao.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.aula.aplicacao.model.FinanCarro;

@Controller
public class ResultadoController {
	
	@GetMapping("/finanresult")
	public String finanCalculo(Model model) {
		model.addAttribute("financiamento", new FinanCarro());
		return "finanresultado";
	}
	
	@PostMapping("/finanresult")
	public String financiaResultado(Model model, @ModelAttribute FinanCarro financiamento) {
		float avista = (float) (financiamento.getValor()- 0.2*(financiamento.getValor()));
		double valorCarro = (double) financiamento.getValor();
		model.addAttribute("valorCarro", valorCarro);
		model.addAttribute("avista", avista);
		return "finanresultado";
	}
	

}
