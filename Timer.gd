extends Timer

func _on_Timer_timeout():
	var total_dice_sides = 6
	#$AnimatedSprite.frame = randi() % total_dice_sides
