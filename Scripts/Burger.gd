extends Area3D

const ROT_SPEED = 1 # grados que rota la moneda en cada frame
@onready var distancia = 30 # Distancia de la hamburguesa al jugador

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_y(deg_to_rad(ROT_SPEED)) 
	# Calculo la distancia entre la posición del personaje y la hamburguesa
	distancia = $".".global_position.distance_to($"../Player".global_position)
	# Actualizo el rtpc con la variable "distancia", registrando al audio manager
	Wwise.set_rtpc_value("Distancia_Hamburguesa", distancia, AudioManager)
	

func _on_body_entered(_body):
	#$SFXComer.play()
	$".".hide() 
	$"../Ventana Ganar".show()
	Wwise.post_event("Play_Estado_Ganar", AudioManager)
	Wwise.post_event("Play_Comer_Hamburguesa", AudioManager)
