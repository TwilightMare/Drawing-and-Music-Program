void metadata() { //Extra Info on the Song 
//Only included what is described in properties, the rest would've remained black regarding to the song/songs 
  if (key == 'w' || key== 'W') { //Have to click W per song if u want to know the meta data 
  println( "Length (in milliseconds):", songMetaData[currentSong].length() );
  println( "Length (in seconds)", songMetaData[currentSong].length()/1000 );
  println( "Length (in minutes)", songMetaData[currentSong].length()/1000/60 );
  //
  println("Title", songMetaData[currentSong].title() );
  println("Genre:", songMetaData[currentSong].genre() );
  println("Date Released:", songMetaData[currentSong].date() );
  //Things which I need to fill in later 
  println("Comments:", songMetaData[currentSong].comment() );
  println("Copyright:", songMetaData[currentSong].copyright() );
  println("Lyrics:", songMetaData[currentSong].lyrics() );
  println("Orchestra:", songMetaData[currentSong].orchestra() );
  println("Composer:", songMetaData[currentSong].composer());
  println("Album:", songMetaData[currentSong].album() );
  println("disc:", songMetaData[currentSong].disc() );
} 
} 

void MetaDataMousePressed() { 
  if(mouseX>=MetaData1X && mouseX<=MetaData1X+MetaDataWidth1 && mouseY>=MetaData1Y && mouseY<=MetaData1Y+MetaDataHeight1) { 
  println( "Length (in milliseconds):", songMetaData[currentSong].length() );
  println( "Length (in seconds)", songMetaData[currentSong].length()/1000 );
  println( "Length (in minutes)", songMetaData[currentSong].length()/1000/60 );
  //
  println("Title", songMetaData[currentSong].title() );
  println("Genre:", songMetaData[currentSong].genre() );
  println("Date Released:", songMetaData[currentSong].date() );
  //Things which I need to fill in later 
  println("Comments:", songMetaData[currentSong].comment() );
  println("Copyright:", songMetaData[currentSong].copyright() );
  println("Lyrics:", songMetaData[currentSong].lyrics() );
  println("Orchestra:", songMetaData[currentSong].orchestra() );
  println("Composer:", songMetaData[currentSong].composer());
  println("Album:", songMetaData[currentSong].album() );
  println("disc:", songMetaData[currentSong].disc() );
} 
} 
