extends Node

signal PlayerCharacterChanged(name: String, color: String)
signal SlimeAbsorbed(name: String, color: String, size: int)
signal PlayerHealthReduced(damage: int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
