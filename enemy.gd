extends Sprite

var speed = 50

var velocity = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.player != null:
		velocity = global_position.direction_to(Global.player.global_position)
		
	global_position += velocity * speed * delta
