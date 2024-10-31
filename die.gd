extends CharacterBody2D

var dieRoll

func _on_timer_timeout():
	var total_dice_sides = 6
	#$AnimatedSprite.frame = randi() % total_dice_sides

func _physics_process(delta):
	if Input.is_action_just_pressed("rollDie"):
		var total_dice_sides = 6
		dieRoll = randi() % total_dice_sides
		$AnimatedSprite.frame = dieRoll
