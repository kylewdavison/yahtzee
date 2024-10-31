extends Sprite2D


func play_walk_right_animation():
	%GuyAnimation.play("walk_right")
func play_walk_up_animation():
	%GuyAnimation.play("walk_up")
func play_walk_left_animation():
	%GuyAnimation.play("walk_left")
func play_walk_down_animation():
	%GuyAnimation.play("walk_down")
	
func play_idle_right_animation():
	%GuyAnimation.play("idle_right")
func play_idle_up_animation():
	%GuyAnimation.play("idle_up")
func play_idle_left_animation():
	%GuyAnimation.play("idle_left")
func play_idle_down_animation():
	%GuyAnimation.play("idle_down")
