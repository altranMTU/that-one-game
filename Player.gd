extends Sprite

var speed = 150
var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.player = self # Replace with function body.

func _exit_tree():
	Global.player = null
	
func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_up")) - int(Input.is_action_pressed("move_down"))
	
	velocity = velocity.normalized()
	
	global_position += speed * velocity * delta
	
