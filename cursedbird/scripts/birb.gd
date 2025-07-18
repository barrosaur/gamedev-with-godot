extends CharacterBody2D


const SPEED = 600
const JUMP_VELOCITY = -200.0
const SLOW_X_SPEED = 1

func _physics_process(delta: float) -> void:
	# Add gravity
	velocity += get_gravity() * delta;
	
	# allows the flappy bird style jump
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY 
	
	velocity.x = SLOW_X_SPEED
	
	move_and_slide();
