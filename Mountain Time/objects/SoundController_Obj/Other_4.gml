/// @description Insert description here
// You can write your code in this editor
//when game starts it plays music and doesnt repeat when entering the main menu

if !audio_is_playing(snd_music){
	audio_play_sound(snd_music, 1, false);
}