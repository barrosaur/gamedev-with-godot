extends Area2D
@onready var timer: Timer = $Timer

func _ready() -> void:
	body_entered.connect(_on_body_entered);
	timer.timeout.connect(_on_timer_timeout);

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5;
	# When player hits spike, player falls off map
	if body.has_method("set_collision_mask"):
		body.set_collision_mask(0);
	timer.start();


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0;
	get_tree().reload_current_scene();
