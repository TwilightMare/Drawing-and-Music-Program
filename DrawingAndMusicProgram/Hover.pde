 void Hover() { 
 
  //HOVER EFFECTS 
  // Hover Effect for Quit Button 
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) { 
    quitButtonColour = red;
  } else {
    quitButtonColour = white;
  }//End Hoverover for Quit Button 
  //
  //Hoverover for secondtext  
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) { //Hoverover
    secondTextColour = green3;
  } else {
    secondTextColour = white;
  }//End Hoverover for Reset Canvas 
  //
  //Hoverover for Reference Button MAYBE 
  if ( mouseX>=refimg1X && mouseX<=refimg1X+refimgWidth1 && mouseY>=refimg1Y && mouseY<=refimg1Y+refimgHeight1 ) { 
    refimgcolour = green1;
  } else {
    refimgcolour = grey2;
  }//End Hoverover for Ref 
  //
  //Hoverover for Colour Book Button 
  if ( mouseX>=colourbook1X && mouseX<=colourbook1X+colourbookWidth1 && mouseY>=colourbook1Y && mouseY<=colourbook1Y+colourbookHeight1 ) { 
    colourbookcolour = green1;
  } else {
    colourbookcolour = grey2;
  }//End Hoverover for Colour Book Button 
  //
   if(mouseX>=MetaData1X && mouseX<=MetaData1X+MetaDataWidth1 && mouseY>=MetaData1Y && mouseY<=MetaData1Y+MetaDataHeight1) { 
    MetaDataColour = green1; 
  } else {
    MetaDataColour = grey2; 
  } 
  //Hoverover for Music Button 
  if ( mouseX>=musicbutton1X && mouseX<=musicbutton1X+musicbuttonWidth1 && mouseY>=musicbutton1Y && mouseY<=musicbutton1Y+musicbuttonHeight1 ) { 
    musicbuttoncolour = grey2;
  } else {
    musicbuttoncolour = grey2;
  }//End Hoverover for Music Button Button 
 
  
  
  //
  //END HOVER EFFECTS 
 } 
