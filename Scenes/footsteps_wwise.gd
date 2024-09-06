extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	Wwise.register_game_obj(self,self.name)
	print(self.get_path())

func wwisePost():
	Wwise.post_event("Play_Pasos", self)

func footstep_switch_dirt():
	Wwise.set_switch("Superficie","Generico_01", self)
	print("Entered Dirt Ground Area")

func footstep_switch_grass():
	Wwise.set_switch("Superficie","Generico_02", self)
	print("Entered Grass Ground Area")
