extends CharacterBody2D
var last_direction

func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * 600
	move_and_slide()
	if velocity.length() > 0.0:
		last_direction = direction
		#print(last_direction)
		if direction.x > 0:
			%Guy.play_walk_right_animation()
		elif direction.x < 0:
			%Guy.play_walk_left_animation()
		elif direction.y < 0:
			%Guy.play_walk_up_animation()
		elif direction.y > 0:
			%Guy.play_walk_down_animation()
	else:
		if last_direction == null:
			%Guy.play_idle_right_animation()
		elif last_direction.x > 0:
			%Guy.play_idle_right_animation()
		elif last_direction.x < 0:
			%Guy.play_idle_left_animation()
		elif last_direction.y < 0:
			%Guy.play_idle_up_animation()
		elif last_direction.y > 0:
			%Guy.play_idle_down_animation()
		
