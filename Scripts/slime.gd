class_name Slime
extends CharacterBody3D

@export var min_speed = 10.0
@export var max_speed = 25.0

@export var data: SlimeData

func _ready() -> void:
	GameManager.SlimeMergeDenied.connect(_on_merge_denied)
	GameManager.SlimeAbsorbed.connect(_on_merge_accepted)

func _physics_process(_delta):
	move_and_slide()
	try_to_merge()

func initialize(start_position, player_position, data: SlimeData):
	look_at_from_position(start_position, player_position, Vector3.UP)
	rotate_y(randf_range(-PI / 4, PI / 4))

	var random_speed = randi_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * random_speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)
	self.data = data

func _on_visible_on_screen_notifier_3d_screen_exited():
	queue_free()

func try_to_merge() -> void:
	var collision := get_last_slide_collision()
	if collision and is_instance_of(collision.get_collider(), Player):
		GameManager.SlimeApproached.emit(data)
	
func _on_merge_denied(slime: SlimeData):
	if slime.slime_name == data.slime_name:
		queue_free()

func _on_merge_accepted(slime: SlimeData):
	if slime.slime_name == data.slime_name:
		queue_free()
