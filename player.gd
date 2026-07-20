extends CharacterBody2D

@export var SPEED: float = 400.0

func _ready() -> void:
	position.x = 200
	position.y = 200

func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("ui_left","ui_right","ui_up", "ui_down")
	velocity = direction * SPEED
	move_and_slide()
