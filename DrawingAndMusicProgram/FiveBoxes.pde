void Box1() { 
pushStyle(); 
//Reference Imgs  
if (Box1On==true) { 
rect(refimg2X, refimg2Y, refimgWidth2, refimgHeight2);
fill(grey4); 
//
rect(refimgsmall1X, refimgsmall1Y, refimgsmallWidth1, refimgsmallHeight1);
image(picpose1, refimgsmall1X, refimgsmall1Y, refimgsmallWidth1, refimgsmallHeight1); 
//
rect(refimgsmall2X, refimgsmall2Y, refimgsmallWidth2, refimgsmallHeight2); 
image(picpose2, refimgsmall2X, refimgsmall2Y, refimgsmallWidth2, refimgsmallHeight2); 
//
rect(refimgsmall3X, refimgsmall3Y, refimgsmallWidth3, refimgsmallHeight3); 
image(picpose3, refimgsmall3X, refimgsmall3Y, refimgsmallWidth3, refimgsmallHeight3); 
//
} 
if (Box1On==false) { 
 fill(aiya); 
 noStroke(); 
 rect(refimg1XOFF, refimg1YOFF, refimgWidth1OFF, refimgHeight1OFF); 
} 
}//End Box1 
//
//

void Box2() { 
  pushStyle(); 
//ColourBook
if (Box2On==true) { 
  fill(grey4); 
  stroke(black); 
 // noStroke(); 
  rect(colourbook2X, colourbook2Y, colourbookWidth2, colourbookHeight2); 
  //
  fill(white);
  rect(colourbooksmall1X, colourbooksmall1Y, colourbooksmallWidth1, colourbooksmallHeight1); 
  image(picbackground4, colourbooksmall1X, colourbooksmall1Y, colourbooksmallWidth1, colourbooksmallHeight1); 
  //
  rect(colourbooksmall2X, colourbooksmall2Y, colourbooksmallWidth2, colourbooksmallHeight2); 
  image(picbackground5, colourbooksmall2X, colourbooksmall2Y, colourbooksmallWidth2, colourbooksmallHeight2);
  //
}
if (Box2On ==false) { 
  fill(aiya); 
  noStroke(); 
  rect(colourbook1XOFF, colourbook1YOFF, colourbookWidth1OFF, colourbookHeight1OFF);
}  
} 

//Images for Reference are the Rest of the Boxes 
void Box3() { 
  pushStyle(); 
//Rect where the imgs will show in 

if (Box3On==true) { 
fill(grey4); 
//stroke(black); 
noStroke(); 
rect(refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); //Rect where the imgs will show in 
image(picpose1, refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); 
//
}
if (Box3On==false) { 
  
  fill(aiya); 
  noStroke(); 
  rect(refimgboxXOFF1, refimgboxYOFF1, refimgboxWidthOFF1, refimgboxHeightOFF1); //A rect that should cover the one with reference images I guess 
} 
}  


void Box4() { 
  pushStyle(); 
if (Box4On==true)  { 
  fill(grey4); 
 // stroke(black); 
  noStroke(); 
  rect(refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); //Rect where the imgs will show in 
  image(picpose2, refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); 
} 
if  (Box4On==false) { 
}
} 

void Box5() { 
  pushStyle(); 
if (Box5On==true)  { 
  fill(grey4); 
  //stroke(black); 
  noStroke(); 
  rect(refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); //Rect where the imgs will show in 
  image(picpose3, refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight); 
} 
if (Box5On==false) { 
}
}

//Music Button Box Things 
void Box6() { 
  
}
