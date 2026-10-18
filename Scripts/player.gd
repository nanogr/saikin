class_name Player
extends CharacterBody3D

@export var speed = 30.0
var facing_direction: Vector2
var target_velocity = Vector3.ZERO

var is_trying_to_merge = false
var slime_to_merge: SlimeData

var merged_slimes: Array[SlimeData] = []

func _ready() -> void:
	GameManager.SlimeApproached.connect(handle_on_slime_collide)


func _physics_process(delta: float) -> void:
	if is_trying_to_merge:
		ask_merge()
		return
	
	velocity += get_gravity() * delta
	
	var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)

	move_and_slide()
	
func handle_on_slime_collide(slime: SlimeData) -> void:
	is_trying_to_merge = true
	slime_to_merge = slime
	
func ask_merge() -> void:
	if Input.is_action_just_pressed("action"):
		GameManager.SlimeAbsorbed.emit(slime_to_merge)
		scale = scale + Vector3(slime_to_merge.size,  slime_to_merge.size,  slime_to_merge.size)
		is_trying_to_merge = false
		print(scale)
		return
		
	if Input.is_action_just_pressed("deny"):
		GameManager.SlimeMergeDenied.emit(slime_to_merge)
		is_trying_to_merge = false
		return
		
		
		
