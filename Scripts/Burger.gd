extends Area3D

#@export var eat_sfx : Array[AudioStreamMP3]
#var audio_player : AudioStreamPlayer3D = AudioStreamPlayer3D.new()
#var random_index : int = randi_range (0,eat_sfx.size() -1)

const ROT_SPEED = 1 # grados que rota la moneda en cada frame

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED)) 
	
#func play_eat_sound():
	#audio_player.stream = eat_sfx[random_index]
	#audio_player.pitch_scale = randf_range (0.7,1.3)
	#audio_player.volume_db = 20
	#audio_player.play()
	#audio_player.finished.connect(func destroy(): audio_player.queue_free())

func _on_body_entered(body):
	#play_eat_sound()
	#await audio_player.finished
	queue_free()
	$".".hide() 
	$"../Menu".show()
