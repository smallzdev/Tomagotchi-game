extends Node
# this is the global scipt, so basically everything here
# can be accessed by any other script. Very useful :D

# energy / water / hunger is out of 100.
var energy = 0
var food = 0
var water = 0
var love = 0

# equipped pet number.
var pet = 1

# naming system.
var renameTextDraft = null
var nickname = null

# pets and if they're owned
# currently, they're all true except for a few 
# for testing purposes.
var pet1owned = false # Pet 1 - "Ginger Cat"
var pet2owned = false # Pet 2 - "Grey Cat"
var pet3owned = false # Pet 3 - "Cat3" (this is like the one with a brown face)
var pet4owned = false # Pet 4 - "Goldfish"
var pet5owned = false # Pet 5 - "Ghost"
var pet6owned = false # Pet 6 - "Pumpkin"
var pet7owned = false # Pet 7 - "Penguin"
var pet8owned = false # Pet 8 - "Baby Chicken"
var pet9owned = false # Pet 9 - "Spider"
var pet10owned = false # Pet 10 - "Golden Retriever"

#hardcore variables
# hardcore mode toggle
var hardcore = false
var hardcoreHighScore = 0
var hardcoreTimer = 0

var hatched = false

var gachadonce = false

var grains = 20

var litres = 20

var waterDifficulty = null

var smallzSaysRNGtemp = null

var doublecollection = false

var SPEED = 900

func add_grains(amount: int) -> void:
	grains+=amount
	print("# grains: ", grains)
	Eventcontroller.emit_signal("grain_collected", grains)

func remove_grains(subtract: int) -> void:
	grains-=subtract
	print("# grains: ", grains)
	Eventcontroller.emit_signal("grain_removed", grains)


# ok i dont think we need this - v 
# remove tag if we do
#var raritygacha = [
	#{"rarity": "common", "chance": 75},
	#{"rarity": "legendary", "chance": 25}
#]


# need change to .tscn files after made
#var characterpools = {
	#"common": [
		#"Ginger Cat",
		#"Goldfish",
		#"Grey Cat",
		#"Pumpkin"
	#],
	#
	#"legendary": [
		#"Ghost",
		#"Penguin",
		#"Spider"
	#]
#}
