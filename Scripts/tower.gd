extends Node2D

func _on_area_2d_body_entered(enemy):
	print(enemy,"entered")

func _on_area_2d_body_exited(enemy):
	print(enemy,"left")
