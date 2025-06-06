extends AudioStreamPlayer

const level_music = preload("res://audio/whirling_of_time_bg.mp3")

func _ready():
	bus = "Music"

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(level_music)
