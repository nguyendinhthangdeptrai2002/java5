package com.thang.bean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SessionService {
@Autowired
static
HttpSession session;
@SuppressWarnings("unchecked")
public <T> T get(String name) {
	return(T) session.getAttribute(name);
}

public <T> T get(String name,T defaultValue) {
	T value = get (name);
	return value != null? value:defaultValue;
}

public void set(String name ,Object value) {
	session.setAttribute(name, value);
}
// xoa attribute trong session
public void remove(String name) {
	session.removeAttribute(name);
}
}
