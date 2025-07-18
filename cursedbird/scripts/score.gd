extends Area2D

var count;

func _ready() -> void:
	count = 0;
	update_label()

func _on_body_entered(body: Node2D) -> void:
	count = count + 1;
	update_label()

func update_label():
	var label = get_node("../../../Label")
	if label:
		label.text = "Count: %d" % count
	else:
		print("Label not found")
