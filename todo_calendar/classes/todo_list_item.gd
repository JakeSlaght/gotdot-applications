extends VBoxContainer

@onready var todo_description: Label = %todo_description
@export var todo_description_text: String = ""

signal delete_todo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	todo_description.text = todo_description_text



func _on_delete_button_pressed() -> void:
	delete_todo.emit(self)
