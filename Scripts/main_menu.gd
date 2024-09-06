extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Wwise.register_game_obj(self, self.name)
	Wwise.register_listener(self)
	Wwise.load_bank("Init")
	Wwise.load_bank("General")
	Wwise.post_event("Play_Musica",self)

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")


func _on_music_volume_value_changed(value: float) -> void:
	Wwise.set_rtpc_value("Music_Volume",value,self)


func _on_back_pressed() -> void:
	$Panel/Main.show()
	$Panel/Settings.hide()
	Wwise.post_event("Play_CONFIRM",self)

func _on_settings_pressed() -> void:
	$Panel/Main.hide()
	$Panel/Settings.show()
	Wwise.post_event("Play_CONFIRM",self)

func _on_settings_mouse_entered() -> void:
	Wwise.post_event("Play_Hover",self)
	
func _on_back_mouse_entered() -> void:
	Wwise.post_event("Play_Hover",self)

func _on_play_mouse_entered() -> void:
	Wwise.post_event("Play_Hover",self)
