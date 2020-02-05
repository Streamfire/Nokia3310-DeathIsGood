extends Node

var Playernode

var seconds:float=0
var running:bool=true

func start_count():
	running=true
func stop_count():
	running=false
func reset_count():
	running=false
	seconds=0

func _process(delta):
	if(running):
		seconds+=delta
		
	if Input.is_action_just_pressed("restart"):
		reset_count()
		get_tree().change_scene("res://internal/Scenes/Startup.tscn")

