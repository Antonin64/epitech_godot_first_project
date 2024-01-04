extends Control


func _ready():
	pass


func _on_button_pressed():
	$CanvasLayer.hide()


func _on_canvas_layer_visibility_changed():
	$CanvasLayer/TabContainer.current_tab = 0
