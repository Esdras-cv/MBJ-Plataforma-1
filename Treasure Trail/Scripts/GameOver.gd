extends Control

func _on_Button_pressed():
	Global.goto_scene("res://Scene/Menu.tscn")
	Global.vidas = 3
	Global.diamantes = 0

func _on_Button2_pressed():
	get_tree().quit()
