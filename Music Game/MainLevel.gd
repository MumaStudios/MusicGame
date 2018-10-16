extends Node2D

var time_passed = 0
var calls_per_sec = 30
var speed = Vector2(-20, 0)
var perfect
var awesome
var good
var fail

func _ready():
	set_process_input(true)
	set_process(true)

#func _process(delta):

#func _input(event):
#	if Input.is_action_just_pressed("ui_left"):
#		var Beat = preload("res://BEATLEFT.tscn").instance()
#		Beat.set_position(get_node("LeftSpawn").get_global_position())
#		add_child(Beat)
	#	queue_free()
	#	print(FIT.time_left)
