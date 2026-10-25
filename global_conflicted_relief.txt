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
# currently, they're all true except for a few for
# testing purposes.
var pet1owned = true
var pet2owned = true
var pet3owned = false
var pet4owned = true
var pet5owned = true
var pet6owned = true
var pet7owned = true
var pet8owned = false
var pet9owned = true

# hardcore mode toggle
var hardcore = false

# trying to figure out oop ;-;
var raritygacha = [
	{"rarity": "common", "chance": 75},
	{"rarity": "legendary", "chance": 25}
]


# need change to .tscn files after made
var characterpools = {
	"common": [
		"Ginger Cat",
		"Goldfish",
		"Grey Cat",
		"Pumpkin"
	],
	
	"legendary": [
		"Ghost",
		"Penguin",
		"Spider"
	]
}
