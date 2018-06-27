package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

//import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Transactions;
import com.uca.capas.domain.Users;
import com.uca.capas.repositories.TransactionsRepository;
import com.uca.capas.repositories.UsersRepository;

//import com.uca.capas.domain.Users;
//import com.uca.capas.repositories.*;

@Controller
public class MainController {

	
	@Autowired
	private UsersRepository usersRepository;
	
	@Autowired
	private TransactionsRepository transactionsRepository;
	
	@RequestMapping("/index")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
	//	List<Users> users = usersRepository.findAll();
		mav.setViewName("iBancaLogin");
		return mav;
	}
	
	//metodo para login
	@RequestMapping("/home")
	public ModelAndView loginValidation(@RequestParam(value="username") String userId,@RequestParam(value="password")String userPass) {
		String userPassVerification = null;
		String userTypeVerification = null;
		ModelAndView mav = new ModelAndView();
		//-----------------usuario------------------------
		Users users = usersRepository.findByUserName(userId);
		// lista de transacciones segun el usuario
		//List<Transactions> transactions = transactionsRepository.findByUserIdLike(users.get(0).getUserId());
		userPassVerification = users.getUserPass();
		userTypeVerification = users.getUserType();
		if(userPass.equals(userPassVerification) && userTypeVerification.equals("admin") ) {
			mav.setViewName("iBancaHomeAdmin");
		}
		if(userPass.equals(userPassVerification) && userTypeVerification.equals("cliente") ) {
		/*	if(users.getUserName().equals(transactions.getU)) {
				
			}//si el usuario es el mismo para transaction y user*/
			mav.addObject("user",users);
			//mav.addObject("transaction",transactions);
			mav.setViewName("iBancaHome");
		}//si es un usuario
		return mav;
	}

	
	
	
}
