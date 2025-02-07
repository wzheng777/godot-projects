extends Node

@onready var al = %"apple label"

var points = 0

func add_point():
	points += 1
	print(points)
	al.text = "Apples: " + str(points)
