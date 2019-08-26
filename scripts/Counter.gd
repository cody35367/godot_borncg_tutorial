extends Label

var coins = 0
var totalCoins = 10

func _ready():
	text = str(coins)

func _on_coin_collected():
	coins+=1
	text = str(coins)
	if coins == totalCoins:
		$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://Win.tscn")