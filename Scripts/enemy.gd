extends RigidBody2D


func _integrate_forces(state):
	
	var checkpoints = get_tree().get_nodes_in_group("enemy chechpoints")
	for checkpoint in checkpoints:
		var checkpointposition = checkpoint.position
		look_at(checkpointposition)
		var direction = Vector2(cos(rotation), sin(rotation)) 
		self.linear_velocity += (direction*100)
		
		
		
		
		#var checkpoint_direction = (checkpoint.position - position).normalized()
		#var checkpoint_distance = position.distance_to(checkpoint.position)
		#var rotation_angle = atan2(checkpoint_direction.y, checkpoint_direction.x)
		#rotation = rotation_angle
		#apply_central_impulse(checkpoint_direction*50)
