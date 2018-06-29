package com.uca.capas.controller;


import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;

//import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
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
		List<Users> users = usersRepository.findAll();
		mav.addObject("usuarios",users);
		mav.setViewName("iBancaLogin");
		return mav;
	}
	@RequestMapping("/home")
	public ModelAndView loginValidation(@RequestParam(value="username") Integer userId,@RequestParam(value="password", required = true) String userPass) {
		String userPassVerification = null;
		String userTypeVerification = null;
		ModelAndView mav = new ModelAndView();
		//---------encontrando usuarios con el id provisto-----------
		try {
			Users users = (Users) usersRepository.findByUserIdEquals(userId);

			//---------encontrando transacciones segun usuario-----------
			List<Transactions> trans = transactionsRepository.findByUserIdEquals(userId) ;
			//----------extrayendo para poder verificar si es admin o cliente-------------
			userPassVerification = users.getUserPass();
			userTypeVerification = users.getUserType();
			
			if(userPass.equals(userPassVerification) && userTypeVerification.equals("admin") ) {
				mav.addObject("logedUserId",userId);
				mav.addObject("logedUserPass",userPassVerification);
				mav.setViewName("iBancaHomeAdmin");
			}//si es administrador
			
			if(userPass.equals(userPassVerification) && userTypeVerification.equals("cliente") ) {
				mav.addObject("user",users);
				mav.addObject("transaction",trans);
				mav.setViewName("iBancaHome");
			}//si es un cliente
		}
		catch(Exception e){
			mav.setViewName("iBancaLogin");
		}//try catch para manejar excepciones de la base (no existe el usuario con el id provisto)
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
	public ModelAndView editUser(@RequestParam("userId") Integer userId) {
		ModelAndView mav = new ModelAndView();
		Users users = (Users) usersRepository.findByUserIdEquals(userId);
		mav.addObject("users", users);
		mav.setViewName("iBancaEditUser");

		return mav;
	}
	@RequestMapping("/updateUser")
	public ModelAndView updateUser(@RequestParam("userId") Integer editUserId,@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass,
			@RequestParam("editUsername")	String userName,@RequestParam(value="userType") String userType,@RequestParam(value="userState")Boolean userState) {
		ModelAndView mav = new ModelAndView();
		Users users = (Users) usersRepository.findByUserIdEquals(editUserId);
		users.setUserName(userName);
		users.setUserState(userState);
		users.setUserType(userType);
		usersRepository.save(users);
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.addObject("users", users);
		mav.setViewName("iBancaEditUser");
		return mav;
	}
	@RequestMapping("/deleteUser")
	public ModelAndView deleteUser(@RequestParam("userId") Integer deleteUserId,@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass) {
		ModelAndView mav = new ModelAndView();
		usersRepository.delete(deleteUserId);
		List<Users> users = usersRepository.findAll();
		mav.addObject("users", users);
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.setViewName("iBancaAll");
		return mav;
	}
	@RequestMapping("/addNewUser")
	public ModelAndView addNewUser(@RequestParam("addUserName") String addUserName,@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass,
			@RequestParam("addUserPass")	String addUserPass,@RequestParam(value="addUserType") String addUserType,@RequestParam(value="addUserState")Boolean addUserState,@RequestParam(value="addUserBalance")Double addUserBalance) {
		ModelAndView mav = new ModelAndView();
		Users users = new Users();
		users.setUserName(addUserName);
		users.setUserPass(addUserPass);
		users.setUserBalance(addUserBalance);
		users.setUserType(addUserType);
		users.setUserState(addUserState);
		usersRepository.save(users);
		List<Users> usersList = usersRepository.findAll();
		mav.addObject("users", usersList);
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.setViewName("iBancaAll");
		return mav;
	}
	@RequestMapping("/addUser")
	public ModelAndView addUser(@RequestParam(value="username") Integer userId,@RequestParam(value="password")String userPass) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("logedUserId",userId);
		mav.addObject("logedUserPass",userPass);
		mav.setViewName("iBancaAddUser");
		return mav;
	}
}