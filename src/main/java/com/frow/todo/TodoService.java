package com.frow.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	
	private static List<Todo> todos = new ArrayList<>();
	
	private static int todosCount = 0;
	
	static {
		todos.add(new Todo(++todosCount, "frow","Louis Vuitton", 
							LocalDate.now().plusMonths(1), "Paris Fashion Week", false ));
		todos.add(new Todo(++todosCount, "frow","Yves Saint Laurent", 
				LocalDate.now().plusMonths(1), "Paris Fashion Week", false ));
		todos.add(new Todo(++todosCount, "frow","Givenchy", 
				LocalDate.now().plusMonths(2), "New York Fashion Week", false ));
	}
	
	public List<Todo> findByUsername(String username){
		return todos;
	}
	
	public void addTodo(String username, String description, LocalDate date, String event, boolean done) {
		Todo todo = new Todo(++todosCount,username,description,date,event,done);
		todos.add(todo);
	}
	
	public void deleteById(int id) {
		//todo.getId() == id
		// todo -> todo.getId() == id
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todos.add(todo);
	}
}