extends Node2D

@onready var rpm_label: Label = $CurrentRPM
@onready var torque_label: Label = $CurrentTorque
@onready var turn_speed_label: Label = $CurrentTurnSpeed
@onready var turn_amount_label: Label = $CurrentTurnAmount


func _ready() -> void:
	update_labels()

func update_labels():
	rpm_label.text = "Current RPM: " + str(CarStats.max_RPM) 
	torque_label.text = "Current Torque: " + str(CarStats.max_torque) 
	turn_speed_label.text = "Current Turn Speed: " + str(CarStats.turn_speed) 
	turn_amount_label.text = "Current Turn Amount: " + str(CarStats.turn_amount) 
	

func _on_rpm_pressed() -> void:
	CarStats.max_RPM += 100
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_torque_pressed() -> void:
	CarStats.max_torque += 100
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_turn_speed_pressed() -> void:
	CarStats.turn_speed += 0.25
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_turn_amount_pressed() -> void:
	CarStats.turn_amount += 1
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
