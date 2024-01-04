extends CanvasLayer


func _ready():
	$AnimationPlayer.play("fade_in")


func fade_out():
	$AnimationPlayer.play_backwards("fade_in")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://Game/Game.tscn")
