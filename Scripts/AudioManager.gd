extends Node

func _ready() -> void:
	Wwise.register_game_obj(self, self.name)
	Wwise.register_listener(self)
	Wwise.load_bank("Init")
	Wwise.load_bank("General")
	Wwise.post_event("Play_Musica",self)
