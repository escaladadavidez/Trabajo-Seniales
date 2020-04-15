extends TextureButton

var violetgenerator = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func generate_block():
	var violet = violetgenerator.instance()
	add_child(violet)
	pass


func _on_VioletGenerator_button_down():
	generate_block()
	pass 
