extends Node

# how fast the engine can spin
var max_RPM
# how strong the engine pulls
var max_torque
# how fast you turn; turn at 120 Deg/s
var turn_speed
# how much you turn; turn 90 Deg left
var turn_amount


# Store default values
const default_max_RPM: float = 1000
const default_max_torque: float = 600
const default_turn_speed: float = 3
const default_turn_amount: float = 0.2


func _ready():
	reset_to_default()

func reset_to_default() -> void:
	max_RPM = default_max_RPM
	max_torque = default_max_torque
	turn_speed = default_turn_speed
	turn_amount = default_turn_amount
