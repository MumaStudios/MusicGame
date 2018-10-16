extends Area2D

var inside = false
var killQ = false
var killW = false
var killE = false
var killR = false
var killT = false
var killY = false
var killU = false
#var combo = 0

#func _process(delta):


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass


func _on_HitDetector_area_entered(area):
	inside == true
	if (area.is_in_group("beatQ")):
		global.beatQ = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatW")):
		global.beatW = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatE")):
		global.beatE = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatR")):
		global.beatR = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatT")):
		global.beatT = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatY")):
		global.beatY = true
		global.combo = global.combo + 1
	if (area.is_in_group("beatU")):
		global.beatU = true
		global.combo = global.combo + 1
#	if (area.is_in_group("beatQ")):
#		global.beatQ = true
#		inside = false

func _on_HitDetector_area_exited(area):
	if (area.has_method("beatQ")) and killQ == false:
		global.combo = 0
	if (area.has_method("beatQ")) and killQ == true:
		area.beatQ()
		killQ = false
		inside = false
		global.Score += global.combo
	if (area.has_method("beatW")) and killW == false:
		global.combo = 0
	if (area.has_method("beatW")) and killW == true:
		area.beatW()
		killW = false
		inside = false
		global.combo = +1
	if (area.has_method("beatE")) and killE == false:
		global.combo = 0
	if (area.has_method("beatE")) and killE == true:
		area.beatQ()
		killE = false
		inside = false
		global.combo = +1
	if (area.has_method("beatR")) and killR == false:
		global.combo = 0
	if (area.has_method("beatR")) and killR == true:
		area.beatW()
		killR = false
		inside = false
		global.combo = +1
	if (area.has_method("beatT")) and killT == false:
		global.combo = 0
	if (area.has_method("beatT")) and killT == true:
		area.beatQ()
		killT = false
		inside = false
		global.combo = +1
	if (area.has_method("beatY")) and killY == false:
		global.combo = 0
	if (area.has_method("beatY")) and killY == true:
		area.beatW()
		killY = false
		inside = false
		global.combo = +1
	if (area.has_method("beatU")) and killU == false:
		global.combo = 0
	if (area.has_method("beatU")) and killU == true:
		area.beatQ()
		killU = false
		inside = false
		global.combo = +1

func killQ():
	killQ = true

func killW():
	killW = true

func killE():
	killE = true

func killR():
	killR = true

func killT():
	killT = true

func killY():
	killY = true

func killU():
	killU = true

func _input(event):
	if event.is_action_pressed("Q") and global.beatQ == true:
		killQ()
	if event.is_action_pressed("W") and global.beatW == true:
		killW()
	if event.is_action_pressed("E") and global.beatE == true:
		killE()
	if event.is_action_pressed("R") and global.beatR == true:
		killR()
	if event.is_action_pressed("T") and global.beatT == true:
		killT()
	if event.is_action_pressed("Y") and global.beatY == true:
		killY()
	if event.is_action_pressed("U") and global.beatU == true:
		killU()
#	if Input.is_action_just_pressed("E") and global.beatE == true:
#		_on_HitDetector_area_entered(area)
#	if Input.is_action_just_pressed("R") and global.beatR == true:
#		_on_HitDetector_area_entered(area)