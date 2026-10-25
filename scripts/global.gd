extends Node
# this is the global scipt, so basically everything here
# can be accessed by any other script. Very useful :D

# energy / water / hunger is out of 100.
var energy = 0
var food = 0
var water = 0
var love = 0

# equipped pet number.
var pet = 2

# pets and if they're owned
# currently, they're all true except for a few 
# for testing purposes.
var pet1owned = true # Pet 1 - "Ginger Cat"
var pet2owned = true # Pet 2 - "Grey Cat"
var pet3owned = false # Pet 3 - "Cat3" (this is like the one with a brown face)
var pet4owned = true # Pet 4 - "Goldfish"
var pet5owned = true # Pet 5 - "Ghost"
var pet6owned = true # Pet 6 - "Pumpkin"
var pet7owned = true # Pet 7 - "Penguin"
var pet8owned = false # Pet 8 - "Baby Chicken"
var pet9owned = true

# hardcore mode toggle
var hardcore = false

var hatched = false

var grains = 0

func add_grains(amount: int) -> void:
	grains+=amount
	print("# grains: ", grains)
	Eventcontroller.emit_signal("grain_collected", grains)

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
