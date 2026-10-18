extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.SlimeApproached.connect(_on_trying_to_merge)
	GameManager.SlimeAbsorbed.connect(_on_decision_made)
	GameManager.SlimeMergeDenied.connect(_on_decision_made)

func _on_trying_to_merge(slime: SlimeData):
	visible = true
	
func _on_decision_made(slime: SlimeData):
	visible = false
