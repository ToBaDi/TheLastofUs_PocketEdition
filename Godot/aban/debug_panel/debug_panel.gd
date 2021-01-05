extends CanvasLayer


const LINEAR_VELOCITY_REPORT : String = "%s linear_velocity: %10.2f x %10.2f y %10.2f z"


func _process(_delta : float) -> void:
	var label = $Control/MarginContainer/RichTextLabel
	label.text = ''
	for p in get_tree().get_nodes_in_group("Players"):
		if p is RigidBody:
			label.text += LINEAR_VELOCITY_REPORT % [p.name, p.linear_velocity.x, p.linear_velocity.y, p.linear_velocity.z]
			label.text += '\n'
