extends Area2D

signal perdeVida2

func _on_Area2D_body_entered(body):
	emit_signal("perdeVida2")
