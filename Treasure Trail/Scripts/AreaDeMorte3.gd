extends Area2D

signal perdeVida3

func _on_AreaMorte3_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("perdeVida3")
