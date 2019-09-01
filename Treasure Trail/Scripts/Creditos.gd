extends Control

func _ready():
	$CenterContainer/VBoxContainer/Label3.text = str(Global.diamantes)

func _on_Menu_pressed():
	Global.goto_scene("res://Scene/Menu.tscn")
	Global.vidas = 3
	Global.diamantes = 0
	
func _on_Quit_pressed():
	get_tree().quit()
