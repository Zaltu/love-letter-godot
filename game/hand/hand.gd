extends Control



var cards = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func addCardToHand(cardnum):
	var newcard = load("res://assets/card/card.tscn").instance()
	newcard.setCardTexture(cardnum)
	get_node("ForceV/ForceH").add_child(newcard)

func removeCardFromHand(index):
	self.cards[index].queue_free()
	self.cards.remove(index)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
