class_name AddTodo extends HBoxContainer

@onready var add_button: Button = %add_button
@onready var todo_text: TextEdit = %todo_text

signal add_new_todo(Todo)

func _on_add_button_pressed() -> void:
	var entered_string = todo_text.text

	if entered_string.length() == 0:
		print_debug('throw an error, there is no string')
	else:
		print_debug('we got us a string!')
		var todo: Todo = Todo.new()
		todo.todo_name = entered_string
		add_new_todo.emit(todo)
