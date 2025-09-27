extends Resource
class_name NPC_Data

@export_group("Text Data")
@export var name:String = "Prénom"
@export var strongChoice:String = "Il n'y a pas de milliardaire éthique"
@export var strongResponse = "NAN MAIS YA DES GENTILS MILLIARDAIRES"
var weakChoice:String = "Tout être humain nées et demeurent libres et égaux en droit"
var weakResponse = "Mais euhhh"

@export_group("Image Data")
@export var UnarmedFace:Texture2D
@export var HurtedFace:Texture2D
