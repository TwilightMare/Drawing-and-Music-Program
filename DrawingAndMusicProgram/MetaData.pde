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
/*
void MetaDataDraw() { 
   int yi = 15;
  int ys = 25, y = ys; //Two Variables
  text("File Name: " + songMetaData[currentSong].fileName(), 5, y);
  text("Length (in milliseconds): " + songMetaData[currentSong].length(), 5, y+=yi);
  text("Title: " + songMetaData[currentSong].title(), 5, y+=yi);
  text("Author: " + songMetaData[currentSong].author(), 5, y+=yi); 
  text("Album: " + songMetaData[currentSong].album(), 5, y+=yi);
  text("Date: " + songMetaData[currentSong].date(), 5, y+=yi);
  text("Comment: " + songMetaData[currentSong].comment(), 5, y+=yi);
  text("Lyrics: " + songMetaData[currentSong].lyrics(), 5, y+=yi ); 
  text("Track: " + songMetaData[currentSong].track(), 5, y+=yi);
  text("Genre: " + songMetaData[currentSong].genre(), 5, y+=yi);
  text("Copyright: " + songMetaData[currentSong].copyright(), 5, y+=yi);
  text("Disc: " + songMetaData[currentSong].disc(), 5, y+=yi);
  text("Composer: " + songMetaData[currentSong].composer(), 5, y+=yi);
  text("Orchestra: " + songMetaData[currentSong].orchestra(), 5, y+=yi);
  text("Publisher: " + songMetaData[currentSong].publisher(), 5, y+=yi);
  text("Encoded: " + songMetaData[currentSong].encoded(), 5, y+=yi);
  
} 
*/
