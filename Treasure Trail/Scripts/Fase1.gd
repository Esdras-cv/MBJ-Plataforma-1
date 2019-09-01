extends Node2D

func _ready():
	$KinematicBody2D/Camera2D/CountDiamantes.text = str(Global.diamantes)
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)

func _on_Area_de_morte_perdeVida():	
	Global.countVidas()
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase1.tscn")

func _on_Area2D_diamanteCollected():
	Global.countDiamantes()
	$KinematicBody2D/Camera2D/CountDiamantes.text = str(Global.diamantes)

func _on_Area2D2_hit():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase1.tscn")

func _on_Area2D_hit():
	Global.countVidas()
	$KinematicBody2D/Camera2D/CountVidas.text = str(Global.vidas)
	if Global.vidas < 0:
		Global.goto_scene("res://Scene/GameOver.tscn")
	else:
		Global.goto_scene("res://Scene/Fase1.tscn")
