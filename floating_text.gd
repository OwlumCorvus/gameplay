extends Label

@export var float_distance: float = 64.0
@export var duration: float = 3.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animate_and_self_destruct()

func animate_and_self_destruct() -> void:
	var tween = create_tween()
	
	tween.set_parallel(true)
	
	var target_y = position.y - float_distance
	tween.tween_property(self, "position:y", target_y, duration).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	
	tween.tween_property(self, "modulate:a", 0.0, duration).set_trans(Tween.TRANS_LINEAR)
	
	tween.set_parallel(false)
	tween.tween_callback(queue_free)
