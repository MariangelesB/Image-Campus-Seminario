extends Node3D

@export var footsteps_sfx : Array[AudioStreamMP3]
@export var ground_position : Marker3D
@onready var player : CharacterBody3D = get_parent()


func _ready():
	player.step.connect(play_sound)



func play_sound():
	var audio_player : AudioStreamPlayer3D = AudioStreamPlayer3D.new()
	var random_index : int = randi_range (0,footsteps_sfx.size() -1)
	audio_player.stream = footsteps_sfx[random_index]
	audio_player.pitch_scale = randf_range (0.7,1.3)
	audio_player.volume_db = -30
	ground_position.add_child(audio_player)
	audio_player.play()
	audio_player.finished.connect(func destroy(): audio_player.queue_free())
	
