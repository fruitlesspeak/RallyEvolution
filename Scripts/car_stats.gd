extends Node

# how fast the engine can spin
var max_RPM: float = 450
# how strong the engine pulls
var max_torque: float = 300
# how fast you turn; turn at 120 Deg/s
var turn_speed: float = 3
# how much you turn; turn 90 Deg left
var turn_amount: float = 0.2


# Store default values
const default_max_RPM: float = 450
const default_max_torque: float = 300
const default_turn_speed: float = 3
const default_turn_amount: float = 0.2

func reset_to_default() -> void:
	max_RPM = default_max_RPM
	max_torque = default_max_torque
	turn_speed = default_turn_speed
	turn_amount = default_turn_amount
