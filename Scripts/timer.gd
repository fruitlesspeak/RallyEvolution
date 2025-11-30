extends Control

var total_time_in_secs: int = 0

func on_timer_timeout():
	total_time_in_secs += 1
	var minutes = int(total_time_in_secs/60.0)
	var seconds = total_time_in_secs - minutes * 60
	$TimerLabel.text = '%02d:%02d' % [minutes, seconds]
	
