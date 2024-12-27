class_name TodoList extends Control

@onready var add_todo: AddTodo = %add_todo
@onready var todo_display: VBoxContainer = %todo_display

var todo_item_list_class = preload("res://todo_list_item.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_todo.add_new_todo.connect(add_todo_to)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_todo_to(todo_item) -> void:
	var new_todo = todo_item_list_class.instantiate()
	new_todo.todo_description_text = todo_item.todo_name
	new_todo.delete_todo.connect(delete_todo_from)
	todo_display.add_child(new_todo)

func delete_todo_from(todo) -> void:
	var children_of_view = todo_display.get_children()
	var index = children_of_view.find(todo)

	if index != -1:
		var child_node = todo_display.get_child(index)
		todo_display.remove_child(child_node)
