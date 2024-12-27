extends VBoxContainer

@onready var todo_description: Label = %todo_description
@export var todo_description_text: String = ""
@onready var expanded_details: MarginContainer = %expanded_details
@onready var task_description_input: TextEdit = %task_description_input
@onready var state_check: CheckBox = %state_check
@onready var reoccurring_check: CheckBox = %reoccurring_check
@onready var task_name_input: TextEdit = %task_name_input

signal delete_todo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	expanded_details.visible = false
	todo_description.text = todo_description_text
	task_name_input.text = todo_description_text
	
func _on_delete_button_pressed() -> void:
	delete_todo.emit(self)

func _on_expand_button_pressed() -> void:
	expanded_details.visible = !expanded_details.visible
