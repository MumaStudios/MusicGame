extends Area2D

var BeatNumber = 0
#var frametimer = 120
var start = false
var time_passed = 0
var calls_per_sec = 30
#var speed = Vector2(-20, 0)
const SPEED = 30
var perfect
var awesome
var good
var fail
#var time_for_one_call= 1 / calls_per_second
onready var MT = get_node("Moving/MoveTimer")
onready var MoveAnim = get_node("Moving/MoveAnim")

func _ready():
	set_process_input(true)
	set_process(true)
#	global.BeatNumber += 1
#	if global.BeatNumber > 0:
#		BeatNumber = global.BeatNumber + 1

func _process(delta):
	translate(Vector2(0, delta*SPEED))

func beatY():
	queue_free()