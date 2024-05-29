class_name InputComponent
extends Node

var inputHorizontal:float = 0.0

func _process(_delta:float)->void:
	inputHorizontal = Input.get_axis("move_left","move_right")

func getJumpInput()->bool:
	return Input.is_action_just_pressed("jump")
