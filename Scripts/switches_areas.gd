extends Node3D

# Enum definitions for GroundType and AmbienceType
enum GroundType { DIRT, GRASS }

# Export variables
@export var ground_type : GroundType

# Function that gets triggered when the player enters the area
func _on_body_entered(body : Node3D):
	if body.is_in_group("Player"):
		match ground_type:
	# Setear Switch si está en Tierra
			GroundType.DIRT:	
				Wwise.post_event("Play_Switch_Superficie_Cemento", AudioManager)
				print("Entered Dirt Ground Area")
	# Setear Switch si está en Pasto
			GroundType.GRASS:
				Wwise.post_event("Play_Switch_Superficie_Tierra", AudioManager)
				print("Entered Grass Ground Area")
