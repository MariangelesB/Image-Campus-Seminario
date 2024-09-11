extends CharacterBody3D

@onready var head = $Head
@onready var camera = $Head/Camera3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const MOUSE_SENS = 0.25

#bob variables
const HEADBOB_FREQ = 2.4
const HEADBOB_AMP = 0.08
var t_headbob = 0.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

#Footsteps variables:
var can_play : bool = true
#signal step

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Wwise.post_event("Play_Estado_Gameplay", AudioManager)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * MOUSE_SENS))
		head.rotate_x(deg_to_rad(-event.relative.y * MOUSE_SENS))
		head.rotation.x = clamp(head.rotation.x,deg_to_rad(-89),deg_to_rad(89))
		

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = 0.0
		velocity.z = 0.0
		
		# Head bob
	t_headbob += delta * velocity.length() * float(is_on_floor())
	camera.transform.origin = _headbob(t_headbob)
	move_and_slide()
	
func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * HEADBOB_FREQ) * HEADBOB_AMP
	pos.x = cos(time * HEADBOB_FREQ / 2) * HEADBOB_AMP
	
	var low_pos = HEADBOB_AMP - 0.05
	#check if the head position has reached a high point so we restart can_play
	if pos.y > -low_pos:
		can_play = true
	
	#check if the head position has reached a low point so we turn off can_play
	if pos.y < -low_pos and can_play:
		can_play = false
		Wwise.post_event("Play_Pasos", AudioManager)
	return pos
