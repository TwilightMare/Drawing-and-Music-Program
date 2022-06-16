
void stroke1() { 
  noStroke(); 
  if( mouseX>=strokweight1X && mouseX<=strokweight1X+strokeweightWidth1 && mouseY>=strokeweight1Y && mouseY<=strokeweight1Y+ strokeweightHeight1) { 
    pushStyle(); 
    println("Stroke1"); 
    drawingStroke = 3; 
  } 
} 

void stroke2() { 
    if( mouseX>=strokweight2X && mouseX<=strokweight2X+strokeweightWidth2 && mouseY>=strokeweight2Y && mouseY<=strokeweight2Y+ strokeweightHeight2) { 
    pushStyle(); 
    println("Stroke2"); 
    drawingStroke = 6; 
  } 
} 

void stroke3() { 
   if( mouseX>=strokweight3X && mouseX<=strokweight3X+strokeweightWidth3 && mouseY>=strokeweight3Y && mouseY<=strokeweight3Y+ strokeweightHeight3) { 
    pushStyle(); 
    println("Stroke3"); 
    drawingStroke = 9; 
  } 
} 

void stroke4() { 
   if( mouseX>=strokweight4X && mouseX<=strokweight4X+strokeweightWidth4 && mouseY>=strokeweight4Y && mouseY<=strokeweight4Y+ strokeweightHeight4) { 
    pushStyle(); 
    println("Stroke4"); 
    drawingStroke = 12; 
  } 
} 

void stroke5() { 
   if( mouseX>=strokweight5X && mouseX<=strokweight5X+strokeweightWidth5 && mouseY>=strokeweight5Y && mouseY<=strokeweight5Y+ strokeweightHeight5) { 
    pushStyle(); 
    println("Stroke Reset"); 
    drawingStroke = 1; 
  } 
} 

  
