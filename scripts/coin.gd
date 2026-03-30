extends Area2D




func _on_body_entered(_body):
	print("金币 +1")
	queue_free()