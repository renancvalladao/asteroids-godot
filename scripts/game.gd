extends Node2D

@onready var lasers = $Lasers
@onready var player = $Player

func _ready():
	player.connect("laser_shot", _on_player_laser_shot)

func _process(_delta):
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func _on_player_laser_shot(laser):
	lasers.add_child(laser)
