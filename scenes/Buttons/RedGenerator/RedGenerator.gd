extends TextureButton

var redgenerator = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func generate_block():
	var red = redgenerator.instance()
	add_child(red)
	pass


func _on_RedGenerator_button_down():
	generate_block()
	pass 
