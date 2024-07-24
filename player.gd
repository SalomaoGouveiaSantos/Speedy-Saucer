extends RigidBody2D

var force = 550

func _physics_process(delta):
	MovePlayer()
	pass
	
func MovePlayer():
	if(Input.is_action_pressed("move_right")):
		apply_force(Vector2(force, 0))
	elif(Input.is_action_pressed("move_left")):
		apply_force(Vector2(-force, 0))
	elif(Input.is_action_pressed("move_up")):
		apply_force(Vector2(0, -force))
	elif(Input.is_action_pressed("move_down")):
		apply_force(Vector2(0, force))	
	else: 
		return
	pass
	

