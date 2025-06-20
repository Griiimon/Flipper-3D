extends Node3D

@onready var right_paddle_joint: JoltGeneric6DOFJoint3D = $"Right Paddle Joint"
@onready var left_paddle_joint: JoltGeneric6DOFJoint3D = $"Left Paddle Joint"



func _physics_process(delta: float) -> void:
	right_paddle_joint.set_flag_x(JoltGeneric6DOFJoint3D.FLAG_ENABLE_ANGULAR_MOTOR, Input.is_action_pressed("ui_right"))
	left_paddle_joint.set_flag_x(JoltGeneric6DOFJoint3D.FLAG_ENABLE_ANGULAR_MOTOR, Input.is_action_pressed("ui_left"))
