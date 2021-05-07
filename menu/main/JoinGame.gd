extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_JoinGame_pressed():
	# Change scenes to the game board
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/board.tscn")
