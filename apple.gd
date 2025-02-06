extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D


func _on_body_entered(body):
	animated_sprite_2d.animation =  "colect"
	await animated_sprite_2d.animation_finished# Wait for the animation to finish
	queue_free()  # Remove the item after the animation



