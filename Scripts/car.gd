extends VehicleBody3D

# how fast the engine can spin
var max_RPM: float
# how strong the engine pulls
var max_torque: float
# how fast you turn; turn at 120 Deg/s
var turn_speed: float
# how much you turn; turn 90 Deg left
var turn_amount: float

var reset_exit_hold_time: float = 0.0
var reset__exit_hold_duration: float = 1.0


func _ready() -> void:
	max_RPM = CarStats.max_RPM
	max_torque = CarStats.max_torque
	turn_speed = CarStats.turn_speed
	turn_amount = CarStats.turn_amount


func _physics_process(delta: float) -> void:
	
	
	var dir = Input.get_action_strength("forward") - Input.get_action_strength("back")
	var steering_direction = Input.get_action_strength("left") - Input.get_action_strength("right")
	
	var RPM_left = abs($wheel_rear_left.get_rpm())
	var RPM_right = abs($wheel_rear_right.get_rpm())
	
	var RPM = (RPM_left + RPM_right) / 2.0
	
	var torque = dir * max_torque * (1.0 - RPM / max_RPM)
	
	engine_force = torque
	steering = lerp(steering, steering_direction * turn_amount, turn_speed * delta)
	
	if dir == 0:
		brake = 2
	
	if Input.is_action_pressed("reset"):
		reset_exit_hold_time += delta
		if reset_exit_hold_time >= reset__exit_hold_duration:
			get_tree().reload_current_scene()
	elif Input.is_action_pressed("exit_to_menu"):
		reset_exit_hold_time += delta
		if reset_exit_hold_time >= reset__exit_hold_duration:
			get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	else:
		reset_exit_hold_time = 0.0
	
		
		
	
	
	
