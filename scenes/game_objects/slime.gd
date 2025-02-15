extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var slime: AnimatedSprite2D = $AnimatedSprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "MC"):
		var y_delta = position.y - body.position.y
		if (y_delta > 25):
			body.jump()
			slime.animation = "die slime"
			await slime.animation_finished
			queue_free()
		else:
			print ("lose 1 hp")
