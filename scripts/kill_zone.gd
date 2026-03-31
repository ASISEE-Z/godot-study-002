extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(_body):
    print("玩家进入了死亡区域")
    Engine.time_scale = 0.5  # 慢动作效果
    _body.get_node("CollisionShape2D").queue_free()  # 移除玩家的碰撞体，防止重复触发
    timer.start()  


func _on_timer_timeout():
    print("玩家死亡，重新开始游戏")
    Engine.time_scale = 1  # 恢复正常速度
    get_tree().reload_current_scene()

