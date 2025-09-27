extends Resource
class_name NPC_Data

@export var name:String = "Prénom"
@export var choiceOne:String = "Il n'y a pas de milliardaire éthique"
@export var choiceTwo:String = "Tout être humain nées et demeurent libres et égaux en droit"
@export var strongResponse = "NAN MAIS YA DES GENTILS MILLIARDAIRES"
@export var weakResponse = "Mais euhhh"

@export_range(1,2) var correctChoice:int = 1
