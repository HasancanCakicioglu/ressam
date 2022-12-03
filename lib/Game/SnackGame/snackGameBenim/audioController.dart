

import 'package:just_audio/just_audio.dart';

class AudioController{

  static late AudioPlayer themeMusic;
  static late AudioPlayer yemMusic;

  AudioController(){
    themeMusic = AudioPlayer();
    yemMusic =AudioPlayer();

    themeMusic.setAsset("assets/audio/snackGame/planet_theme_music.mp3");
    yemMusic.setAsset("assets/audio/snackGame/button_click.mp3");
    themeMusic.setLoopMode(LoopMode.one);
  }


  void toggleThemeMusic(){
    
    if(themeMusic.playing){
      themeMusic.stop();
    }else{
      themeMusic.play();
    }

  }

  void toggleYemMusic(){
    
    if(yemMusic.playing){
      yemMusic.stop();
    }else{
      yemMusic.play();
    }

  }





}