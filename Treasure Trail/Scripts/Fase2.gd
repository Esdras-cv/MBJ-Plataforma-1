extends Node2D

func _ready():
	$KinematicBody2D/Camera2D/CounVidas.text = str(Global.vidas)
	$KinematicBody2D/Camera2D/countDiamantes.text = str(Global.diamantes)

func _on_Area2D_perdeVida2():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CounVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase2.tscn")

func _on_Area2D_diamanteCollected():
	Global.countDiamantes()
	$KinematicBody2D/Camera2D/countDiamantes.text = str(Global.diamantes)

func _on_Area2D_hit():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CounVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase2.tscn")
