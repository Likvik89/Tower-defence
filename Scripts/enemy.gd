extends RigidBody2D


func movement():
	
	
	for checkpoint in get_tree().get_nodes_in_group("enemy chechpoints"):
		
		look_at(checkpoint.position)
		var direction = Vector2(cos(rotation), sin(rotation)) 
		self.position += (direction*4)

func _process(enmy):
	movement()
