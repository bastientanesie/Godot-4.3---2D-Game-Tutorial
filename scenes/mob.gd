extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])

# Called when the object gets outside of the viewport's boundaries
func _on_screen_exited() -> void:
	print("Destroying mob")
	queue_free()
