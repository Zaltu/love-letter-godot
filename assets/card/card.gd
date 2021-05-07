extends TextureRect

const CARDPATH = "res://assets/card/cardimages/{cardnum}.png"

var playercard = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func setCardTexture(cardnum):
	self.set_texture(load(CARDPATH.format({"cardnum": cardnum})))


# For glow...
func mouseEnter():
	if self.playercard:
		pass
	pass
func mouseLeave():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
