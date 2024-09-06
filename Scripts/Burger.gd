extends Area3D

const ROT_SPEED = 1 # grados que rota la moneda en cada frame

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED)) 

func _on_body_entered(body):
	$EatSound.play()
	$".".hide() 
	$"../Menu".show()
