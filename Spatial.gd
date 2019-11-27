extends Spatial

var time_remaining = 900
onready var Remaining = $HUD/Remaining 


func _process(delta):
	$CameraHub.rotate_y(0.01)

func _on_Countdown_timeout():
	time_remaining -= 1
	if time_remaining <= 0:
		get_tree().change_scene("res://Result.tscn")
	else:
		var m = time_remaining / 60
		var s = time_remaining % 60
		$HUD/Remaining.text = str(m) + ":" + str(s)
