class_name Main
extends Control

@export var tap_count_label: Label

var tap_count: int = 0

func _ready():
	update_tap_count_text()

func _on_tapper_pressed():
	increase_tap_count()

func increase_tap_count():
	tap_count += 1
	update_tap_count_text()
	
func update_tap_count_text():
	tap_count_label.text = "Tap count: %s" %tap_count
