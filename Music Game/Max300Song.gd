extends Node

onready var SpawnQ = get_node("SpawnQ")
onready var SpawnW = get_node("SpawnW")
onready var SpawnE = get_node("SpawnE")
onready var SpawnR = get_node("SpawnR")
onready var SpawnT = get_node("SpawnT")
onready var SpawnY = get_node("SpawnY")
onready var SpawnU = get_node("SpawnU")
onready var ST = get_node("SongTimer")
onready var Music = get_node("MUSIC")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if global.Start == true:
		ST.start()
		Music.start()
		
