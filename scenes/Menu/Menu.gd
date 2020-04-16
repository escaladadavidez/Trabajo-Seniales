extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
signal button_down
func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	$RedGenerator.connect("button_down", self, "count_new_instance")
	$VioletGenerator.connect("button_down", self, "count_new_instance")	
	pass
	
func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	pass
	
func delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	pass

