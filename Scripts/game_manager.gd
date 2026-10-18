extends Node

signal PlayerCharacterChanged(name: String, color: String)
signal SlimeAbsorbed(slime: SlimeData)
signal PlayerHealthReduced(damage: int)
signal EnemyDefeated()
signal SlimeApproached(slime: SlimeData)
signal SlimeMergeDenied(slime: SlimeData)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
