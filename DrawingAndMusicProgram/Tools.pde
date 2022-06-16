void Tools() {
//
/*
stroke(ink);
 //VERY IMPORTANT TO HELP CHANGE COLOURS
if ( draw==true && DrawLine==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY );
//strokeWeight(2);
stroke(reset); 
//End Line Drawing Tool 
//
*/

if ( draw==true && DrawLine==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) { 
stroke(ink); 
strokeWeight(drawingStroke); 
line( mouseX, mouseY, pmouseX, pmouseY );
//stroke(black); 
stroke(reset); 
} 


/*
fill(ink); //Need this to make Ellipse and other shapes work without the outline   
noStroke(); 
if ( draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter ); //End Circle Drawing Tool
//
*/
//
fill(ink); //Need this to make Ellipse and other shapes work without the outline   
noStroke(); 
if ( draw==true && DrawEllipse==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter ); //End Circle Drawing Tool
stroke(reset);
//
fill(ink); 
noStroke(); 
if (draw==true && DrawSquare==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) rect(mouseX, mouseY, drawingDiameter, drawingDiameter);  
stroke(reset);
//
fill(ink); 
noStroke(); 
if (draw==true && DrawTriangle==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) triangle(mouseX-10, mouseY+10, mouseX, mouseY-10, mouseX+10, mouseY+10);
stroke(reset);

//
//Eraser 
/*
fill(white); 
noStroke(); 
if (draw==true && Eraser==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) rect(mouseX, mouseY, drawingDiameter, drawingDiameter);
//stroke(reset); 
//fill(ink); 
*/
fill(white); 
noStroke(); 
if (draw==true && Eraser==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
stroke(white); 
strokeWeight(drawingStroke); 
line( mouseX, mouseY, pmouseX, pmouseY );
stroke(black); 
stroke(reset); 
}



//
//
//
void Eraser() { 
  if (Eraser==false && mouseX>=Eraser1X && mouseX<=Eraser1X+EraserWidth1 && mouseY>=Eraser1Y && mouseY<=Eraser1Y+EraserHeight1) { 
      Eraser=true; 
      DrawLine=false;  
      DrawEllipse=false; 
      DrawTriangle=false; 
      DrawSquare=false; 
} 
}



void DrawLine() {
  if ( DrawLine==false && mouseX>=drawline1X && mouseX<=drawline1X+drawlineWidth1 && mouseY>=drawline1Y && mouseY<=drawline1Y+drawlineHeight1) { 
      DrawLine=true;  
      DrawEllipse=false; 
      DrawTriangle=false; 
      DrawSquare=false; 
      Eraser=false; 
}
}

void DrawSquare () {
  if ( DrawSquare==false && mouseX>=squarebigX && mouseX<=squarebigX+rectsquareWidth && mouseY>=rectsquarebigY && mouseY<=rectsquarebigY+rectsquareHeight ) { 
    DrawEllipse=false; 
    DrawLine=false; 
    DrawTriangle=false; 
    DrawSquare=true; 
    Eraser=false; 
  } 
} 

void DrawEllipse() { 
  if ( DrawEllipse==false && mouseX>=squareEllipse1X && mouseX<=squareEllipse1X+squareEllipseWidth1 && mouseY>=squareEllipse1Y && mouseY<=squareEllipse1Y+squareEllipseHeight1 )  { 
    DrawEllipse=true; 
    DrawLine=false; 
    DrawTriangle=false; 
    DrawSquare=false; 
    Eraser=false; 
    }
} 

void DrawTriangle() { 
  if ( DrawTriangle==false && mouseX>=squareTriangle2X && mouseX<=squareTriangle2X+squareTriangleWidth2 && mouseY>=squareTriangle2Y && mouseY<=squareTriangle2Y+squareTriangleHeight2 )  { 
    DrawEllipse=false; 
    DrawLine=false; 
    DrawTriangle=true; 
    DrawSquare=false; 
    Eraser=false; 
  } 
} 
 


 
 
 
