extends Node2D

func _on_area_2d_body_entered(enmy):
	print(enmy,"entered")

func _on_area_2d_body_exited(enmy):
	print(enmy,"left")
