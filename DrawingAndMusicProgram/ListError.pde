void ListError() {
  if ( currentSong >= numberOfSongs - 1 ) { 
    currentSong = numberOfSongs - numberOfSongs; //Helps when u click next it resumes back to beginning etc. 
  } else {
    currentSong++;
  }
}


void NextListError() { //For back button  
    if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong= numberOfSongs - 1;
  } else {
    currentSong --;
  }
  
} 

//oid NextListError() { //For Back Button 
/*
if (currentSong <= numberOfSongs - 1) { 
  currentSong = numberOfSongs -1; 
} else { 
  currentSong --; 
} 

*/
/*

  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong= numberOfSongs - 1;
  } else {
    currentSong --;
  }
  
} 
*/
