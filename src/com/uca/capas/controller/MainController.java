package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

//import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Users;
import com.uca.capas.repositories.UsersRepository;

//import com.uca.capas.domain.Users;
//import com.uca.capas.repositories.*;

@Controller
public class MainController {
	@Autowired
	private UsersRepository usersRepository;
	
	@RequestMapping("/index")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
	//	List<Users> users = usersRepository.findAll();
		mav.setViewName("iBancaLogin");
		return mav;
	}
	@RequestMapping("/home")
	public ModelAndView loginValidation(@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass) {
		String userPassVerification = null;
		String userTypeVerification = null;
		ModelAndView mav = new ModelAndView();
		Users users = (Users) usersRepository.findByUserIdEquals(userId);
		userPassVerification = users.getUserPass();
		userTypeVerification = users.getUserType();
		if(userPass.equals(userPassVerification) && userTypeVerification.equals("admin") ) {
			mav.addObject("logedUserId",userId);
			mav.addObject("logedUserPass",userPassVerification);
			mav.setViewName("iBancaHomeAdmin");
		}
		if(userPass.equals(userPassVerification) && userTypeVerification.equals("cliente") ) {
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPassVerification);
		mav.setViewName("iBancaHome");

		}//si es un cliente
		return mav;
	}
	@RequestMapping("/verTodos")
	public ModelAndView verTodos(@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass) {
		ModelAndView mav = new ModelAndView();
		List<Users> users = usersRepository.findAll();
		mav.addObject("users", users);
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.setViewName("iBancaAll");
		return mav;
	}
	@RequestMapping("/editarUsuario")
	public ModelAndView editUser(@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.setViewName("iBancaEditUser");
		return mav;
	}
	
	/*
	@RequestMapping("/saveUser")
	public ModelAndView saveUser() {
		ModelAndView mav = new ModelAndView();
		List<Users> users = usersRepository.findByUserIdEquals(2);
		users.get(0).setUserName("Ricardo Lopez");
		usersRepository.save(users);
		mav.setViewName("iBancaEditUser");
		return mav;
	}
	*/
}
