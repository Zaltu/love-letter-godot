extends Control

var server = null

# Yeah it's meme. Deal with it.
const playerx = [{"v": BoxContainer.ALIGN_BEGIN, "h": BoxContainer.ALIGN_CENTER},
				{"v": BoxContainer.ALIGN_CENTER, "h": BoxContainer.ALIGN_BEGIN},
				{"v": BoxContainer.ALIGN_CENTER, "h": BoxContainer.ALIGN_END}]

var players = []

# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect or something.
	self.connectToServer()
	
	# for each player (except local player):
	#	add a hand node aligned to the next playerX specs
	
	self.get_node("PlayerHand/ForceV").set_alignment(BoxContainer.ALIGN_END)
	self.get_node("PlayerHand/ForceV/ForceH").set_alignment(BoxContainer.ALIGN_CENTER)
	self.get_node("PlayerHand").addCardToHand(getServerHand())
	

func _addPlayer(h, v):
	var nplayer = load("res://game/hand/hand.tscn").instance()
	nplayer.get_node("ForceV").set_alignment(v)
	nplayer.get_node("ForceV/ForceH").set_alignment(h)
	players.append(nplayer)
	self.add_child(nplayer)


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
