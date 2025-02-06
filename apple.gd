extends Area2D



func _on_body_entered(body):
	$AnimatedSprite2D.play( "colect")
	await $AnimatedSprite2D.animation_finished# Wait for the animation to finish
	queue_free()  # Remove the item after the animation



