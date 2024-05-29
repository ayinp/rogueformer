class_name MovementComponent
extends Node

@export_subgroup("settings")
@export var speed:float = 100

func handleHorizontalMovement(body:CharacterBody2D, direction:float)->void:
	body.velocity.x = speed*direction
