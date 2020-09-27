extends Control

func _on_Play_pressed():
   get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
  get_tree().quit()

func _on_Instructions_pressed():
	get_tree().change_scene("res://Menu/Instructions.tscn")

func _on_Back_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")
