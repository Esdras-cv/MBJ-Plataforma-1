extends Area2D

signal diamanteCollected

func _on_Area2D_body_entered(body):
	emit_signal("diamanteCollected")
	queue_free()