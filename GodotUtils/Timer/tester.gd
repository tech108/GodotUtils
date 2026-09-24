extends Node2D

@export var timer: Node
@export var display: Label
@export var display2: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.time_changed.connect(_timer_updated)
	timer.time_ended.connect(_timer_ended)
	await get_tree().create_timer(2.0).timeout
	timer.startTimer()


func _timer_updated(newTime: String) -> void:
	display.text = newTime
	
func _timer_ended() -> void:
	display2.text = "Timer Finished"
