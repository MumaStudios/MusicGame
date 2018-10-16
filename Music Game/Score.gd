extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	get_node("Score").set_text(str(global.Score))
	get_node("combo").set_text(str(global.combo))