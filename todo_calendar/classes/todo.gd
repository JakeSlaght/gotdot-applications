class_name Todo extends Node

enum TODO_STATE {
	NOT_DONE,
	PARTIALLY,
	COMPLETED,
}

var todo_name: String = ""
var todo_description: String = ""
var todo_state: TODO_STATE = TODO_STATE.NOT_DONE
var reoccurring: bool = false
