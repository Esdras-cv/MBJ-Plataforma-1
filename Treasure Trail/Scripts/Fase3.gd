extends Node2D

func _ready():
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	$KinematicBody2D/Camera2D/CountDiamantes.text = str(Global.diamantes)

func _on_AreaMorte3_perdeVida3():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase3.tscn")

func _on_Area2D_hit():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase3.tscn")

func _on_Area2D_diamanteCollected():
	Global.countDiamantes()
	$KinematicBody2D/Camera2D/CountDiamantes.text = str(Global.diamantes)
