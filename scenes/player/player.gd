extends CharacterBody2D

@export_subgroup("Nodes")
@export var GravityComponent:gravity_component 

func _physics_process(delta:float) -> void:
	GravityComponent.handle_gravity(self,delta)
	move_and_slide()
