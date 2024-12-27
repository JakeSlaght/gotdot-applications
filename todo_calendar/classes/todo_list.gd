class_name TodoList extends Control
@onready var add_todo: AddTodo = %add_todo


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_todo.add_new_todo.connect(add_todo_to)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_todo_to(todo_item) -> void:
	print_debug(JSON.stringify(todo_item))
