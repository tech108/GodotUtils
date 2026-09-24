extends Node

@export var timeInSeconds: int
var timer: Timer
var timeLeft: String

#Timer Update Signal 
signal time_changed(newTime: String)
signal time_ended()

#Setup backing timer
func _ready() -> void:
	timer = Timer.new()
	timer.wait_time = 1.0 # Wait 1 second
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)
	startTimer()

#Call to start the timer
func startTimer() -> void:
	_formatTime(timeInSeconds)
	timer.start()

#Count down the seconds
func _on_timer_timeout() -> void:
	timeInSeconds -= 1
	time_changed.emit(_formatTime(timeInSeconds))
	if(timeInSeconds == 0):
		time_ended.emit()
		timer.stop()

#Preformats the Text for Displayed Game Timers
func _formatTime(seconds: int) -> String:
	var mins: String = str(seconds / 60)
	var secs: String = "%02d" % (seconds % 60)
	
	return str(mins, ":", secs)
