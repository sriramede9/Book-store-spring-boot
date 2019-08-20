package com.sboot.Bookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sboot.Bookstore.userservice.LoginService;
import com.sboot.Bookstore.userservice.TodoService;
import com.sboot.Bookstore.entity.Todo;
import com.sboot.Bookstore.entity.User;

@Controller
@SessionAttributes("user")
public class LoginController {

	@ModelAttribute("user")
	public User setUpUserForm() {
		return new User();
	}

	@Autowired
	LoginService ls;

	@Autowired
	TodoService ts;

	@GetMapping("/login")
	public String login(Model model) {

		model.addAttribute("user", new User());

		return "login";
	}

	@PostMapping("/resp")
	public String formresponse(@ModelAttribute User us, Model model) {

		model.addAttribute("user", us);

		System.out.println(ls.validate(us));

		if (ls.validate(us)) {

			return "welcome";
		}

		return "login";
	}

	@GetMapping("/todoform")
	public String gettodo(Model model, ModelMap mmap, @SessionAttribute("user") User user) {

		System.out.println(user);

		model.addAttribute("todo", ts.getall());

		model.addAttribute(user);

		return "todoform";
	}

	@GetMapping("/add-todo")
	public String addtodo(Model model) {

		model.addAttribute("todo", new Todo());

		return "add-todo";
	}

	@PostMapping("/todoresp")
	public String todoformresponse(@ModelAttribute Todo tod) {
		System.out.println(tod);
		ts.addtod(tod);
		return "todoform";
	}
}
