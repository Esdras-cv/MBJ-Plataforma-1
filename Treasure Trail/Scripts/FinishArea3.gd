extends Area2D

export (String) var nextLevel = null

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		Global.goto_scene(nextLevel)