extends Area2D

const FLOATING_TEXT_SCENE = preload("uid://b8gt3i8crldhr")
@export var max_hp: float = 3.0
var hp: float = max_hp
var is_being_mined: bool = false
var mining_timer: float = 0.0

@onready var progress_bar: ProgressBar = $ProgressBar

func _ready() -> void:
	progress_bar.hide()
	progress_bar.max_value = max_hp
	progress_bar.value = max_hp

func _process(delta: float) -> void:
	if is_being_mined:
		mining_timer += delta
		
		if mining_timer >= 1.0:
			hp -= 1.0
			mining_timer = 0.0
			progress_bar.value = hp
			spawn_dmg_text("+1 Stone")
			GlobalInventory.add_item("Stone", 1)
		if hp <= 0:
			queue_free()

func spawn_dmg_text(custom_text: String) -> void:
	var text_instance = FLOATING_TEXT_SCENE.instantiate()
	text_instance.text = custom_text
	
	get_parent().add_child(text_instance)
	text_instance.global_position = global_position + Vector2(0, -20)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		is_being_mined = true
		progress_bar.show()

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		is_being_mined = false
		mining_timer = 0.0
		progress_bar.hide()
