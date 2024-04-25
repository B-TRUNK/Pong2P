extends Node2D

func _process(delta):
	
	$p1_score.text = str(Main.p1_score)
	$p2_score.text = str(Main.p2_score)
	
	pass


func _on_top_body_entered(body):
		body.direction.y *= -1
		pass


func _on_bottom_body_entered(body):
		body.direction.y *= -1
		pass


func _on_left_body_entered(body):
		body.queue_free()
		var e = preload("res://scenes/ball.tscn").instantiate()
		e.global_position = Vector2(576 ,320)
		add_child(e)
		Main.p2_score +=1
		pass


func _on_right_body_entered(body):
		body.queue_free()
		var e = preload("res://scenes/ball.tscn").instantiate()
		e.global_position = Vector2(576 ,320)
		add_child(e)
		Main.p1_score +=1
		pass
