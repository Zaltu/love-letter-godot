extends Control

var server = null

# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect or something.
	self.connectToServer()
	self.get_node("PlayerHand/ForceV").set_alignment(BoxContainer.ALIGN_END)
	self.get_node("PlayerHand/ForceV/ForceH").set_alignment(BoxContainer.ALIGN_CENTER)
	self.get_node("PlayerHand").addCardToHand(getServerHand())
	


func connectToServer():
	server = "lul"


func getServerHand():
	# Server? Lul just use Luigi
	return "placeholdercard"


func onGameEnd():
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://menu/main/mainmenu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
