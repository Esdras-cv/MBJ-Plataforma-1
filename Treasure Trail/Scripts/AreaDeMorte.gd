extends Area2D

signal perdeVida

func _on_Area_de_morte_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("perdeVida")
