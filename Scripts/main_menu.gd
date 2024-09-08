extends Node2D

# ------------ RTPC Volúmenes ------------ 
func _on_music_volume_value_changed(value: float) -> void:
	Wwise.set_rtpc_value("MX_Volume", value, AudioManager)

func _on_sfx_volume_value_changed(value: float) -> void:
	Wwise.set_rtpc_value("SX_Volume", value, AudioManager)


# ------------ Eventos Botones ------------ 
# Click en "Volver"
func _on_back_pressed() -> void:
	$Panel/Main.show()
	$Panel/Settings.hide()
	Wwise.post_event("Play_Click", AudioManager)

# Click en "Configuración"
func _on_settings_pressed() -> void:
	$Panel/Main.hide()
	$Panel/Settings.show()
	Wwise.post_event("Play_Click", AudioManager)

# Click en "Jugar"
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")

# Pasar arriba de "Jugar"
func _on_settings_mouse_entered() -> void:
	Wwise.post_event("Play_Hover", AudioManager)

# Pasar arriba de "Volver"
func _on_back_mouse_entered() -> void:
	Wwise.post_event("Play_Hover", AudioManager)

# Pasar arriba de "Configuración"
func _on_play_mouse_entered() -> void:
	Wwise.post_event("Play_Hover", AudioManager)
