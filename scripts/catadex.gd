extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var backButton = %backButton
	backButton.pressed.connect(back_button_pressed)
	catadexUpdate()
	
func back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/main_game_scene.tscn")

# sprites and labels of catadex items
@onready var pet1Sprite = $Panel/CatadexItem1
@onready var pet1Label = $Panel/CatadexItem1Label
@onready var pet2Sprite = $Panel/CatadexItem2
@onready var pet2Label = $Panel/CatadexItem2Label
@onready var pet3Sprite = $Panel/CatadexItem3
@onready var pet3Label = $Panel/CatadexItem3Label
@onready var pet4Sprite = $Panel/CatadexItem4
@onready var pet4Label = $Panel/CatadexItem4Label
@onready var pet5Sprite = $Panel/CatadexItem5
@onready var pet5Label = $Panel/CatadexItem5Label
@onready var pet6Sprite = $Panel/CatadexItem6
@onready var pet6Label = $Panel/CatadexItem6Label
@onready var pet7Sprite = $Panel/CatadexItem7
@onready var pet7Label = $Panel/CatadexItem7Label
@onready var pet8Sprite = $Panel/CatadexItem8
@onready var pet8Label = $Panel/CatadexItem8Label

# catadex updating variable
# SooOOOOosoOOoo messy :/
func catadexUpdate():
	if Global.pet1owned == true:
		pet1Label.text = "Ginger Cat"
		pet1Sprite.frame = 0
	if Global.pet1owned == false:
		pet1Label.text = "????"
		pet1Sprite.frame = 1
	if Global.pet2owned == true:
		pet2Label.text = "Grey Cat"
		pet2Sprite.frame = 0
	if Global.pet2owned == false:
		pet2Sprite.frame = 1
		pet2Label.text = "????"
	if Global.pet3owned == true:
		pet3Sprite.frame = 0
		pet3Label.text = "Cat3"
	if Global.pet3owned == false:
		pet3Sprite.frame = 1
		pet3Label.text = "????"
	if Global.pet4owned == true:
		pet4Sprite.frame = 0
		pet4Label.text = "Goldfish"
	if Global.pet4owned == false:
		pet4Sprite.frame = 1
		pet4Label.text = "????"
	if Global.pet5owned == true:
		pet5Sprite.frame = 0
		pet5Label.text = "Ghost"
	if Global.pet5owned == false:
		pet5Sprite.frame = 1
		pet5Label.text = "????"
	if Global.pet6owned == true:
		pet6Sprite.frame = 0
		pet6Label.text = "Pumpkin"
	if Global.pet6owned == false:
		pet6Label.text = "????"
		pet6Sprite.frame = 1
	if Global.pet7owned == true:
		pet7Label.text = "Penguin"
		pet7Sprite.frame = 0
	if Global.pet7owned == false:
		pet7Label.text = "????"
		pet7Sprite.frame = 1
	if Global.pet8owned == true:
		pet8Label.text = "Baby Chicken"
		pet8Sprite.frame = 0
	if Global.pet8owned == false:
		pet8Label.text = "????"
		pet8Sprite.frame = 1
