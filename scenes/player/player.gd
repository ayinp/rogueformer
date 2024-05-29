extends CharacterBody2D

@export_subgroup("Nodes")
@export var gravityComponent:GravityComponent 
@export var inputComponent:InputComponent
@export var movementComponent:MovementComponent
@export var animationComponent:AnimationComponent

func _physics_process(delta:float)->void:
	gravityComponent.handle_gravity(self,delta)
	movementComponent.handleHorizontalMovement(self,inputComponent.inputHorizontal)
	animationComponent.handleMoveAnimation(inputComponent.inputHorizontal)
	move_and_slide()
