package com.sboot.Bookstore.userservice;

import java.util.ArrayList;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sboot.Bookstore.entity.Todo;

@Service
public class TodoService {

	private static List<Todo> todos = new ArrayList<Todo>();

	public static List<Todo> getTodos() {
		return todos;
	}

	public static void setTodos(List<Todo> todos) {
		TodoService.todos = todos;
	}

	private static int todoCount = 3;

	static {
		todos.add(new Todo(1, "asdfa", new Date(), true));
		todos.add(new Todo(2, "gify", new Date(), false));

	}

	public boolean addtod(Todo todo) {

		return todos.add(todo);
	}

	public List<Todo> getall() {
		return todos;
	}

	public void detele(int id) {

		todos.remove(id);

	}

}
