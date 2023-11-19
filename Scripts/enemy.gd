extends RigidBody2D
@export var player : Node2D

func _integrate_forces(state):
	
	
	var player_direction = (player.position - position).normalized()
	var player_distance = position.distance_to(player.position)
	var rotation_angle = atan2(player_direction.y, player_direction.x)
	rotation = rotation_angle
	apply_central_force(player_direction*50)
