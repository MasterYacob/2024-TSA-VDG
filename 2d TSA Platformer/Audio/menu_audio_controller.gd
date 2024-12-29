extends Node

@onready var menu_audio = $MenuAudioStreamPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	menu_audio.stream = load("res://Audio/MenuThemeIntroVGD.wav");
	menu_audio.play();



# Menu Audio_Stream_Player
func _on_audio_stream_player_finished() -> void:
	menu_audio.stream = load("res://Audio/MenuThemeMelodyVGD.wav");
	menu_audio.autoplay = true;
	menu_audio.play();
