extends Node2D

var enemy_1 = preload("res://enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.node_creation_parent = self

func _exit_tree():
	Global.node_creation_parent = null

func _on_MobTimer_timeout():
	var enemy_position = Vector2(rand_range(-160, 670),rand_range(-90, 390))
	
	while enemy_position.x < 640 and enemy_position.x > -80 and enemy_position.y < 360 and enemy_position.y > -45:
		enemy_position = Vector2(rand_range(-160, 670),rand_range(-90, 390))
	
	Global.instance_node(enemy_1, enemy_position, self)





func _on_ScoreTimer_timeout():
	Global.points += 1 # Replace with function body.
