extends Node2D

const SPEED = 50

var direction = 1

@onready var RayCastRight = $RayCastRight
@onready var RayCastLeft = $RayCastLeft
@onready var AnimatedSprite = $AnimatedSprite2D

func _process(delta: float) -> void:
	if RayCastRight.is_colliding():
		direction = -1
		AnimatedSprite.flip_h = true
	elif RayCastLeft.is_colliding():
		direction = 1
		AnimatedSprite.flip_h = false

	position.x += direction * SPEED * delta
