extends Area3D

const ROT_SPEED = 1 # grados que rota la moneda en cada frame
@onready var distancia = 30 # Distancia de la hamburguesa al jugador

<<<<<<< HEAD
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

=======
>>>>>>> d19543a8f995ceef2c9e13f3faab4d28d278d1e9
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_y(deg_to_rad(ROT_SPEED)) 
<<<<<<< HEAD
		# Calculo la distancia entre la posición del personaje y la hamburguesa
	distancia = $".".global_position.distance_to($"../Player".global_position)
	# Actualizo el rtpc con la variable "distancia", registrando al audio manager
	Wwise.set_rtpc_value("Distancia_Hamburguesa", distancia, AudioManager)
	
#func play_eat_sound():
	#audio_player.stream = eat_sfx[random_index]
	#audio_player.pitch_scale = randf_range (0.7,1.3)
	#audio_player.volume_db = 20
	#audio_player.play()
	#audio_player.finished.connect(func destroy(): audio_player.queue_free())

func _on_body_entered(_body):
	#play_eat_sound()
	#await audio_player.finished
	queue_free()
=======

func _on_body_entered(body):
	$EatSound.play()
>>>>>>> d19543a8f995ceef2c9e13f3faab4d28d278d1e9
	$".".hide() 
	$"../Ventana Ganar".show()
	Wwise.post_event("Play_Comer_Hamburguesa", AudioManager)
