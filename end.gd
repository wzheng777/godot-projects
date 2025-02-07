extends Area2D

@onready var sprite_2d = $Sprite2D

func _on_body_entered(body):
	if (body.name == "MC"):
		sprite_2d.animation =  "colect"
		await sprite_2d.animation_finished# Wait for the animation to finish
		queue_free()  # Remove the item after the animation

