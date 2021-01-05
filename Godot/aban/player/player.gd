extends RigidBody


func _ready() -> void:
	add_to_group("Players")


func _physics_process(delta : float) -> void:
	var move_direction : Vector3 = get_move_direction()
	add_central_force(move_direction * delta * 1000)
	pass


func get_move_direction() -> Vector3:
	var dir : Vector3 = Vector3.ZERO
	dir.z += Input.get_action_strength("WalkForward")
	dir.x += Input.get_action_strength("WalkLeft")
	dir.z -= Input.get_action_strength("WalkBack")
	dir.x -= Input.get_action_strength("WalkRight")
	return dir
