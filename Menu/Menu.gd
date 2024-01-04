extends Control

func _ready():
	$Settings_menu/CanvasLayer.hide()


func _on_quit_button_pressed():
	get_tree().quit()


func _on_options_button_pressed():
	$Menu.hide()
	$Settings_menu/CanvasLayer.show()
	await $Settings_menu/CanvasLayer.visibility_changed
	$Menu.show()


func _on_start_button_pressed():
	$Menu/NameContainer/NameLabel.hide()
	$Menu/ButtonsContainer/StartButton.hide()
	$Menu/ButtonsContainer/OptionsButton.hide()
	$Menu/ButtonsContainer/QuitButton.hide()
	$Menu/Fader.fade_out()
