package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;

import com.example.model.UserModel;
import com.example.repo.UserRepository;

@Controller
public class HomeController {

	@Autowired
	UserRepository userRepository;

	@GetMapping("/")
	public ModelAndView index() {

		return new ModelAndView("index");
	}

	@GetMapping("listpage")
	public ModelAndView listpage() {

		List<UserModel> ulist = userRepository.findAll();

		return new ModelAndView("listpage", "ulist", ulist);
	}

	@PostMapping("insert")
	public ModelAndView insert(@ModelAttribute UserModel user) {

		userRepository.save(user);

		return new ModelAndView("redirect:/listpage");
	}

	@GetMapping("delete/{id}")
	public ModelAndView delete(@PathVariable(name = "id") long id) {

		userRepository.delete(userRepository.findById(id).get());

		return new ModelAndView("redirect:/listpage");
	}
	
	@GetMapping("update/{id}")
	public ModelAndView update(@PathVariable(name = "id") long id) {

	UserModel user =	userRepository.findById(id).get();

		return new ModelAndView("editpage","user",user);
	}
}
