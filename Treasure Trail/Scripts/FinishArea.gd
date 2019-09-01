extends Area2D

export (String) var nextLevel = null

func _on_Finish_body_entered(body):
	if body.is_in_group("Player"):
		Global.goto_scene(nextLevel)