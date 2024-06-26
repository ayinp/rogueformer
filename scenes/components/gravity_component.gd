class_name gravity_component
extends Node

@export_subgroup("settings")
@export var gravity:float = 100.0

var isFalling:bool = false

func handle_gravity(body:CharacterBody2D, delta:float) -> void:
	if not body.is_on_floor():
		body.velocity.y += gravity*delta
	
	isFalling = body.velocity.y > 0 and not body.is_on_floor()
