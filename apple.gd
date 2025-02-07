extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D

@onready var gm = %"game manager"

func _on_body_entered(body):
	if (body.name == "MC"):
		gm.add_point()
		animated_sprite_2d.animation =  "colect"
		await animated_sprite_2d.animation_finished
		queue_free()
