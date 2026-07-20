extends Node

var items = {
	"Stone": 0,
	"WheatSeed": 5
}

signal inventory_updated

var currently_dragging_item: String = ""

func add_item(item_name: String, amount: int) -> void:
	if items.has(item_name):
		items[item_name] += amount
		inventory_updated.emit()
