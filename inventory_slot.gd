extends PanelContainer

@onready var qty_label: Label = $HBoxContainer/QtyLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalInventory.inventory_updated.connect(update_ui)
	update_ui()

func update_ui() -> void:
	var current_stone = GlobalInventory.items["Stone"]
	qty_label.text = "x" + str(current_stone)
