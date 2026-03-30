extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(_body):
    print("玩家进入了死亡区域")
    timer.start()  


func _on_timer_timeout():
    print("玩家死亡，重新开始游戏")
    get_tree().reload_current_scene()

