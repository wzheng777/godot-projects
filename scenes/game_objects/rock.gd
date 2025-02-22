extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var rock: AnimatedSprite2D = $AnimatedSprite2D
@onready var box: CollisionShape2D = %CollisionShape2D


var die_rock = false
func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "MC"):
		var y_delta = position.y - body.position.y
		if (y_delta > 25 && die_rock == false):
			die_rock = true
			body.jump()
			body.add_collision_exception_with(rock)
			#rock.add_collision_exception_with(body)
			rock.animation = "die rock"
			
			  #body.velocity.y = max(body.velocity.y, 9300)
			#body.move_and_slide(body.velocity)
			# Temporarily move enemy to a layer that the player ignores
			#rock.collision_layer
			#body.position.y += 10
			await rock.animation_finished
			queue_free()
		else:
			print ("lose 1 hp")
