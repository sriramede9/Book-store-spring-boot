package com.sboot.Bookstore.userservice;

import org.springframework.stereotype.Service;

import com.sboot.Bookstore.entity.User;

@Service
public class LoginService {

	public boolean validate(User us) {

		if (us.getUname().equals("sri") && us.getPwrd().equals("sri")) {
			return true;
		}

		return false;
	}
}
