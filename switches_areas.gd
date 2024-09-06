extends Node3D

# Enum definitions for GroundType and AmbienceType
enum GroundType { DIRT, GRASS }

# Export variables
@export var ground_type : GroundType

var _body : Node3D
	
# Function that gets triggered when the player enters the area
func _on_body_entered(body : Node3D):
	if body.is_in_group("Player"):
		_body = body
		footstep_switch()

# Function to handle footstep sound switching based on the type of ground
func footstep_switch():
	var footsteps = _body.get_parent().get_node("/root/Level/Player/FootstepsWwise")
	match ground_type:
		GroundType.DIRT:
			footsteps.call("footstep_switch_dirt")
			
		GroundType.GRASS:
			footsteps.call("footstep_switch_grass")
			
