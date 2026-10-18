class_name SlimeData
extends Resource

@export var slime_name = ""
@export var color = "#fff"
@export var size = 10

func _init(name = "", color = "", size = 10):
	self.slime_name = name
	self.color = color
	self.size = size
