extends Node3D

# Enum definitions for MaterialPiso
enum MaterialPiso { CEMENTO, TIERRA }

# Export variables
@export var material_piso : MaterialPiso

# Function that gets triggered when the player enters the area
func _on_body_entered(body : Node3D):
	if body.is_in_group("Player"):
		match material_piso:
	# Setear Switch si está en Cemento
			MaterialPiso.CEMENTO:	
				Wwise.post_event("Play_Switch_Superficie_Cemento", AudioManager)
				print("Ingreso a piso de cemento")
	# Setear Switch si está en Tierra
			MaterialPiso.TIERRA:
				Wwise.post_event("Play_Switch_Superficie_Tierra", AudioManager)
				print("Ingreso a piso de tierra")
