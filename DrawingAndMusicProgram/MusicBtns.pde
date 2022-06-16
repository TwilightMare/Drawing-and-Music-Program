void MuteandUnmutePic() { //Put in void Draw 
  } 
  

void Rewind() { //KeyPressed 
   if ( key=='r' || key=='R' ) {
     println("Rewinding"); 
      if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //playListArrayError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
     //playListArrayError();
    }
    }
    } 
    
void RewindMousePressed() { //MousePressed 
  if (mouseX>=MusicBtnSquare1X && mouseX<=MusicBtnSquare1X+MusicBtnSquareWidth1 && mouseY>=MusicBtnSquare1Y && mouseY<=MusicBtnSquare1Y+MusicBtnSquareHeight1) { 
    println("Rewinding MPS");
    if ( song[currentSong].isPlaying() ) {
     song[currentSong].pause();
     song[currentSong].rewind();
    //playListArrayError();
     song[currentSong].play();
     } else {
    song[currentSong].rewind();
    //playListArrayError(); 
} 
} 
}

void Mute() { 
   if ( key=='m' || key=='M' ) { 
    println("Mute KPS"); 
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
} 

void MuteMousePressed() { 
if (mouseX>=MusicBtnSquare7X && mouseX<=MusicBtnSquare7X+MusicBtnSquareWidth7 && mouseY>=MusicBtnSquare7Y && mouseY<=MusicBtnSquare7Y+MusicBtnSquareHeight7) { 
  println("Muted MPS");
   if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
}
} 

//The Play buttons also act as a Pause Button - Ima need to use Booleans to change the pcicture etc. 
void Play() {
  if ( key=='p' || key=='P' ) {
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else { 
      song[currentSong].play(); 
    }
  } //End Play-Pause Button
} 

void PlayMousePressed() {
  if (mouseX>=MusicBtnSquare4X && mouseX<=MusicBtnSquare4X+MusicBtnSquareWidth4 && mouseY>=MusicBtnSquare4Y && mouseY<=MusicBtnSquare4Y+MusicBtnSquareHeight4) { 
     if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else { 
      song[currentSong].play(); 
    }
  }
  
} 


void SkipForward() { //Like skipping song by 3 seconds etc. //KEYPRESSED 
if (keyCode ==RIGHT) { //Right Arrow Key 
  song[currentSong].skip( 3000 );
}
} 

void SkipForwardMousePressed() { 
    if (mouseX>=MusicBtnSquare5X && mouseX<=MusicBtnSquare5X+MusicBtnSquareWidth5 && mouseY>=MusicBtnSquare5Y && mouseY<=MusicBtnSquare5Y+MusicBtnSquareHeight5) { 
    song[currentSong].skip( 3000 );
    } 
} 

void SkipBackward() { //KEY PRESSED 
if (keyCode == LEFT) { //Left Arrow Key 
  song[currentSong].skip( -3000 );
}
}

void SkipBackwardMousePressed() { 
   if (mouseX>=MusicBtnSquare2X && mouseX<=MusicBtnSquare2X+MusicBtnSquareWidth2 && mouseY>=MusicBtnSquare2Y && mouseY<=MusicBtnSquare2Y+MusicBtnSquareHeight2) { 
    song[currentSong].skip( -3000 );
    } 
} 

void UnMute() { 
} 

void NextSong() { //KeyPressed 
  if ( key=='n' || key=='N' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    }
  }//End Next Button
} 

/*
void SlowDownSong() { //Import to Setup/KeyPressed - Idk depends 
   if ( key=='Y' || key=='y' ) {
     file = new SoundFile(this, "MusicMedia/Playdate (Melanie Martinez) but it's on violin - TIKTOK VIOLIN - Joel Sunny.mp3" ); 
     file.rate(1);  
  }//End Next Button
   }
 */

void NextSongMousePressed() { 
  if (mouseX>=MusicBtnSquare6X && mouseX<=MusicBtnSquare6X+MusicBtnSquareWidth6 && mouseY>=MusicBtnSquare6Y && mouseY<=MusicBtnSquare6Y+MusicBtnSquareHeight6) { 
  println("Next Song Playing");
     if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    }
  }
} 


void PreviousSong() {  //KeyPressed 
    if ( key=='b' || key=='B' ) {
       if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      NextListError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      NextListError(); 
    }
    } 
} 


void PreviousSongMousePressed() { //FIND PICTURE AND MAKE NEW RECT TO WORK THIS 
   if (mouseX>=MusicBtnSkipBack9X && mouseX<=MusicBtnSkipBack9X+MusicBtnSkipBackWidth9 && mouseY>=MusicBtnSkipBack9Y && mouseY<=MusicBtnSkipBack9Y+MusicBtnSkipBackHeight9) {
       if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      NextListError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      NextListError(); 
    }
    } 
} 

void Pause() { 
} 

void Loop() { 
} 


void Random() { //I doubt this is going to work but Lets try it and fail I guess WORKING ON IT 
  if ( key=='t' || key=='T' ) {
   if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      ListError();
      song[currentSong].play();
    }
    }
  }


void WaveForm() { 
  fill(white);
  noStroke();
  rect(SoundX, SoundY, SoundWidth, SoundHeight);
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[currentSong].bufferSize(), SoundWidth*1.034, SoundHeight*0.9/20 ); //Changing numbers of Sound Height make the line longer or shorter 
    //Changing Varaibles of Sound Width make the line move side to side 
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), SoundWidth*1.034, SoundHeight*0.9/20 );
    line( x1, 70 + song[currentSong].right.get(i)*70, x2, 70 + song[currentSong].right.get(i+1)*70 );  //The Numbers, change how high or low the WaveLength Will be 
  }
}




 
//void VolumeBtnMaybeidk() { 
//} 
