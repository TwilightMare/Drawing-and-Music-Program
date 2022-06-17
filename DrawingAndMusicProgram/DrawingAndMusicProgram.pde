import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Help With Speeding or Slowing down a song/sound 
import processing.sound.*;
SoundFile file; 
//
//Global Variables  - WORKING ON ACTUAL DRAWING PROGRAM 
float SoundX, SoundY, SoundWidth, SoundHeight; 
//
Minim minim; 
int numberOfSongs = 6; //Will Change depending on how many songs you include 
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; 
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
float MusicButtonRect1X, MusicButtonRect1Y, MusicButtonRectWidth1, MusicButtonRectHeight1; 
float MusicBtnSquare1X, MusicBtnSquare1Y, MusicBtnSquareWidth1, MusicBtnSquareHeight1; 
float MusicBtnSquare2X, MusicBtnSquare2Y, MusicBtnSquareWidth2, MusicBtnSquareHeight2; 
float MusicBtnSquare3X, MusicBtnSquare3Y, MusicBtnSquareWidth3, MusicBtnSquareHeight3; 
float MusicBtnSquare4X, MusicBtnSquare4Y, MusicBtnSquareWidth4, MusicBtnSquareHeight4; 
float MusicBtnSquare5X, MusicBtnSquare5Y, MusicBtnSquareWidth5, MusicBtnSquareHeight5; 
float MusicBtnSquare6X, MusicBtnSquare6Y, MusicBtnSquareWidth6, MusicBtnSquareHeight6; 
float MusicBtnSquare7X, MusicBtnSquare7Y, MusicBtnSquareWidth7, MusicBtnSquareHeight7; 
float MusicBtnSquare8X, MusicBtnSquare8Y, MusicBtnSquareWidth8, MusicBtnSquareHeight8; 
float MusicBtnSkipBack9X,  MusicBtnSkipBack9Y, MusicBtnSkipBackWidth9, MusicBtnSkipBackHeight9; 
PImage picMusic1, picMusic2, picMusic3, picMusic4, picMusic5, picMusic6, picMusic7, picMusic8, picSkipBack; 
//
Boolean draw=false, DrawLine=false, DrawEllipse=false, DrawTriangle=false, Eraser=false;
Boolean drawEllipse=false; 
Boolean ellipse=false; 
//
Boolean Box1On= false, Box2On=false, Box3On=false, Box4On=false, Box5On=false; 
Boolean Image1draw=false, Image2draw=false, Image3=false; 
//
Boolean DrawSquare=false; 
Boolean squareMiddle=false; 
Boolean squareBig=false; 
//
Boolean circleSmall=false; 
Boolean circleMiddle=false; 
Boolean circleBig=false; 
//
int reset=1;
int aiya = #807c7c; 
//
float drawingDiameter; 
//
PFont font, font2;
int intialSize=55, size;
String quitButtonString = "X";
String secondTextString = "Reset Canvas";
String BrushSize = "  Brushes"; 
String Reference = "Reference";
String ColourBook = "Colour Book"; 
String MusicButton = "Music Button"; 
String Square = "Ima Square"; 
String InfoaboutSizes = "Sizes For Ellipse +  Square -->"; 
String InfoaboutSizes2 = "Sizes For line + Eraser  --> "; 
String EraserText = "Eraser"; 
String Reset = "Reset"; 
String MetaData = "  Meta Data   Shown in Console"; 
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
//
float CBX, CBY, CBS1, CBS11,    CBX10, CBY10, CBS10, CBS1010,   CBX19, CBY19, CBS19, CBS1919,  CBX28, CBY28, CBS28, CBS2828,    CBX37, CBY37, CBS37, CBS3737,  CBX46, CBY46, CBS46, CBS4646,   CBX55, CBY55, CBS505, CBS5555,                                                              
      CBX2, CBY2, CBS2, CBS22,  CBX11, CBY11, CBS101, CBS1111,  CBX20, CBY20, CBS20, CBS2020,  CBX29, CBY29, CBS29, CBS2929,    CBX38, CBY38, CBS38, CBS3838,  CBX47, CBY47, CBS47, CBS4747,   CBX56, CBY56, CBS56, CBS5656,   
      CBX3, CBY3, CBS3, CBS33,  CBX12, CBY12, CBS12, CBS1212,   CBX21, CBY21, CBS21, CBS2121,  CBX30, CBY30, CBS30, CBS3030,    CBX39, CBY39, CBS39, CBS3939,  CBX48, CBY48, CBS48, CBS4848,   CBX57, CBY57, CBS57, CBS5757,   
      CBX4, CBY4, CBS4, CBS44,  CBX13, CBY13, CBS13, CBS1313,   CBX22, CBY22, CBS202, CBS2222, CBX31, CBY31, CBS31, CBS3131,    CBX40, CBY40, CBS40, CBS4040,  CBX49, CBY49, CBS49, CBS4949,   CBX58, CBY58, CBS58, CBS5858,   
      CBX5, CBY5, CBS5, CBS55,  CBX14, CBY14, CBS14, CBS1414,   CBX23, CBY23, CBS23, CBS2323,  CBX32, CBY32, CBS32, CBS3232,    CBX41, CBY41, CBS41, CBS4141,  CBX50, CBY50, CBS50, CBS5050,   CBX59, CBY59, CBS59, CBS5959,       
      CBX6, CBY6, CBS6, CBS66,  CBX15, CBY15, CBS15, CBS1515,   CBX24, CBY24, CBS24, CBS2424,  CBX33, CBY33, CBS303, CBS3333,   CBX42, CBY42, CBS42, CBS4242,  CBX51, CBY51, CBS51, CBS5151,   CBX60, CBY60, CBS60, CBS6060,       
      CBX7, CBY7, CBS7, CBS77,  CBX16, CBY16, CBS16, CBS1616,   CBX25, CBY25, CBS25, CBS2525,  CBX34, CBY34, CBS34, CBS3434,    CBX43, CBY43, CBS43, CBS4343,  CBX52, CBY52, CBS52, CBS5252,   CBX61, CBY61, CBS61, CBS6161,  
      CBX8, CBY8, CBS8, CBS88,  CBX17, CBY17, CBS17, CBS1717,   CBX26, CBY26, CBS26, CBS2626,  CBX35, CBY35, CBS35, CBS3535,    CBX44, CBY44, CBS404, CBS4444, CBX53, CBY53, CBS53, CBS5353,   CBX62, CBY62, CBS62, CBS6262,  
      CBX9, CBY9, CBS9, CBS99,  CBX18, CBY18, CBS18, CBS1818,   CBX27, CBY27, CBS27, CBS2727,  CBX36, CBY36, CBS36, CBS3636,    CBX45, CBY45, CBS45, CBS4545,  CBX54, CBY54, CBS54, CBS5454,   CBX63, CBY63, CBS63, CBS6363, 
    
     CBX64, CBY64, CBS64, CBS6464,  CBX73, CBY73, CBS73, CBS7373,
     CBX65, CBY65, CBS65, CBS6565,  CBX74, CBY74, CBS74, CBS7474,
     CBX66, CBY66, CBS606, CBS6666, CBX75, CBY75, CBS75, CBS7575,
     CBX67, CBY67, CBS67, CBS6767,  CBX76, CBY76, CBS76, CBS7676,
     CBX68, CBY68, CBS68, CBS6868,  CBX77, CBY77, CBS707, CBS7777,
     CBX69, CBY69, CBS69, CBS6969,  CBX78, CBY78, CBS78, CBS7878,
     CBX70, CBY70, CBS70, CBS7070,  CBX79, CBY79, CBS79, CBS7979,
     CBX71, CBY71, CBS71, CBS7171,  CBX80, CBY80, CBS80, CBS8080,
     CBX72, CBY72, CBS72, CBS7272,  CBX81, CBY81, CBS81, CBS8181;
//
color white=255, black=0, red=#FF0303, quitButtonColour, secondTextColour, ink, purple=#B92EFF, purpleX=#7400AF,redX=#FF0009, refimgcolour, colourbookcolour, musicbuttoncolour, MetaDataColour;
//
Boolean paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter;
//
Boolean 
pinkshade1=false, pinkshade2=false, pinkshade3=false, pinkshade4=false, pinkshade5=false,  pinkshade6=false, pinkshade7=false, pinkshade8=false, pinkshade9=false,
purpleshade1=false, purpleshade2=false, purpleshade3=false, purpleshade4=false, purpleshade5=false, purpleshade6=false, purpleshade7=false, purpleshade8=false, purpleshade9=false, 
blueshade1=false, blueshade2=false, blueshade3=false, blueshade4=false, blueshade5=false, blueshade6=false, blueshade7=false, blueshade8=false, blueshade9=false,
cyanshade1=false, cyanshade2=false, cyanshade3=false, cyanshade4=false, cyanshade5=false, cyanshade6=false, cyanshade7=false, cyanshade8=false, cyanshade9=false, 
greenshade1=false, greenshade2=false, greenshade3=false, greenshade4=false, greenshade5=false, greenshade6=false, greenshade7=false, greenshade8=false, greenshade9=false, 
yellowshade1=false, yellowshade2=false, yellowshade3=false, yellowshade4=false, yellowshade5=false, yellowshade6=false, yellowshade7=false, yellowshade8=false, yellowshade9=false, 
orangeshade1=false, orangeshade2=false, orangeshade3=false, orangeshade4=false, orangeshade5=false, orangeshade6=false, orangeshade7=false, orangeshade8=false, orangeshade9=false, 
redshade1=false, redshade2=false, redshade3=false, redshade4=false, redshade5=false, redshade6=false, redshade7=false, redshade8=false, redshade9=false,
greyshade1=false, greyshade2=false, greyshade3=false, greyshade4=false, greyshade5=false, greyshade6=false, greyshade7=false, greyshade8=false, greyshade9=false;
//
color
pink1=#fe00ee , pink2=#fcafd3 , pink3=#ff048b , pink4=#fdab9f , pink5=#f19cbb , pink6=#e070a2 , pink7=#e05187 , pink8=#f74a8a , pink9=#dd3163,  
purple1=#dfa8e4 , purple2=#c89ce4 , purple3=#c27ac0 , purple4=#9452a5 , purple5=#846faa , purple6=#934379 , purple7=#634975 , purple8=#72286f , purple9=#451e5d,  
blue1=#99d9ea , blue2=#8980ff , blue3=#6666ff , blue4=#4d4dff , blue5=#545aa7 , blue6=#205896 , blue7=#0000ff , blue8=#000099 , blue9=#2e2787, 
cyan1=#b3fefe , cyan2=#40ffca , cyan3=#4bfcfe , cyan4=#42bbad , cyan5=#55dbfd , cyan6=#59d3c8 , cyan7=#2e96b5 , cyan8=#1c7892 , cyan9=#24807e, 
green1=#9cff88 , green2=#7df481 , green3=#22ee5b , green4=#75db1b , green5=#3ed715 , green6=#05e177 , green7=#65a781 , green8=#30ad23 , green9=#11772d, 
yellow1=#fff77d , yellow2=#ffee75 , yellow3=#ffdf00 , yellow4=#ffba00 , yellow5=#fff200 , yellow6=#effd60 , yellow7=#c49102 , yellow8=#cd7722 , yellow9=#ef9b0f,
orange1=#fdae1d , orange2=#ec9706 , orange3=#e97017 , orange4=#ff7f27 , orange5=#fc6b02 , orange6=#ed7117 , orange7=#d67129 , orange8=#b56727 , orange9=#ae5906 , 
red1=#ff2e2f , red2=#fe0000 , red3=#ff5c5d , red4=#da012c , red5=#ed1c24 , red6=#dd153c , red7=#9b111e , red8=#a30001 , red9=#800000 ,  
grey1=#ffffff , grey2=#c6c6c6 , grey3=#c5c7c4 , grey4=#aaaaaa , grey5=#8f8f8f , grey6=#717171 , grey7=#565656 , grey8=#393939 , grey9=#000000;   
//
float rectbigX, rectbigY, rectbigWidth, rectbigHeight; 
float rectsmallX, rectsmallY, rectsmallWidth, rectsmallHeight; 
//
float squarebigX, rectsquarebigY, rectsquareWidth, rectsquareHeight;   //POPULATE THESE IN VARIABLES 
float squareEllipse1X, squareEllipse1Y, squareEllipseWidth1, squareEllipseHeight1 ;  
float squareTriangle2X, squareTriangle2Y, squareTriangleWidth2, squareTriangleHeight2 ;  
//
float line1X, line1Y, line1Width, line1Height; 
float line2X, line2Y, line2Width, line2Height; 
float line3X, line3Y, line3Width, line3Height;
float line4X, line4Y, line4Width, line4Height; 
//
float maincircleX, maincircleY, maincircleDiameter; 
float circle1X, circle1Y, circle1Diameter; 
float circle2X, circle2Y, circle2Diameter; 
float circle3X, circle3Y, circle3Diameter; 
//
float musicbutton1X, musicbutton1Y, musicbuttonWidth1, musicbuttonHeight1; 
float Eraser1X, Eraser1Y, EraserWidth1, EraserHeight1; 
//triangle(x1, y1, x2, y2, x3, y3) --> How it works 
//maintriangle1AX, maintriangle1AY, maintriangle12AX, maintriangle12AY, maintriangle13AX, maintriangle13AY; 
float maintriangle1X, maintriangle1Y, maintriangle2X, maintriangle2Y, maintriangle3X, maintriangle3Y; //Figure out how fking triangles work smh 
float drawline1X, drawline1Y, drawlineWidth1, drawlineHeight1; 
float dottedline1X, dottedline1Y, dottedlineWidth1, dottedlineHeight1; 
//triangle
//
float refimg1X, refimg1Y, refimgWidth1, refimgHeight1; 
float refimg1XOFF, refimg1YOFF, refimgWidth1OFF, refimgHeight1OFF;
float refimgsmall1X, refimgsmall1Y, refimgsmallWidth1, refimgsmallHeight1;  
float refimgsmall2X, refimgsmall2Y, refimgsmallWidth2, refimgsmallHeight2;  
float refimgsmall3X, refimgsmall3Y, refimgsmallWidth3, refimgsmallHeight3;  
float refimg2X, refimg2Y, refimgWidth2, refimgHeight2; 
float colourbook1X, colourbook1Y, colourbookWidth1, colourbookHeight1; 
float colourbook1XOFF, colourbook1YOFF, colourbookWidth1OFF, colourbookHeight1OFF; 
float colourbook2X, colourbook2Y, colourbookWidth2, colourbookHeight2; 
float colourbooksmall1X, colourbooksmall1Y, colourbooksmallWidth1, colourbooksmallHeight1; 
float colourbooksmall2X, colourbooksmall2Y, colourbooksmallWidth2, colourbooksmallHeight2;  
//
PImage picpose1, picpose2, picpose3, picbackground1, picbackground2, picbackground3, picbackground4, picbackground5; 
PImage pictriangle, picline, piccircle; 
//
float refimgboxX, refimgboxY, refimgboxWidth, refimgboxHeight; 
float refimgboxX2, refimgboxY2, refimgboxWidth2, refimgboxHeight2; 
//
float refimgboxXOFF1, refimgboxYOFF1, refimgboxWidthOFF1, refimgboxHeightOFF1; 
float refimgboxXOFF2, refimgboxYOFF2, refimgboxWidthOFF2, refimgboxHeightOFF2; 
//
float rectcolour1X, rectcolour1Y, rectcolourWidth1, rectColourHeight1; 
//
float size1X, size1Y, sizeWidth1, sizeHeight1, size2X, size2Y, sizeWidth2, sizeHeight2, size3X, size3Y, sizeWidth3, sizeHeight3, size4X, size4Y, sizeWidth4, sizeHeight4, size5X, size5Y, sizeWidth5, sizeHeight5,   sizediameter1; 
float strokweight1X, strokeweight1Y, strokeweightWidth1, strokeweightHeight1, strokweight2X, strokeweight2Y, strokeweightWidth2, strokeweightHeight2 ;
float strokweight3X, strokeweight3Y, strokeweightWidth3, strokeweightHeight3, strokweight4X, strokeweight4Y, strokeweightWidth4, strokeweightHeight4 ; 
float strokweight5X, strokeweight5Y, strokeweightWidth5, strokeweightHeight5 ; 
float drawingStroke; 
//
float instruction1X, instruction1Y, instructionWidth1, instructionHeight1; 
float instruction2X, instruction2Y, instructionWidth2, instructionHeight2; 
float MetaData1X, MetaData1Y, MetaDataWidth1, MetaDataHeight1; 
//
float RectCover1X, RectCover1Y, RectCoverWidth1, RectCoverHeight1;
float RectCover2X, RectCover2Y, RectCoverWidth2, RectCoverHeight2;
float RectCover3X, RectCover3Y, RectCoverWidth3, RectCoverHeight3;
float RectCover4X, RectCover4Y, RectCoverWidth4, RectCoverHeight4;


//
//AudioMetaData meta; 
//AudioPlayer Theme; 
//End Global Variables
void setup() {
 // SlowDownSong(); 
  //Instructions for what to click on keypressed //I should use /t or /n 
  println("Welcome, This is the Beginning of the Console, instructions, key/mousePresses and Meta Data explanatory");
  println("Press P to Pause and Unpause");
  println("Press N for Next Song");
  println("Press B for Previous Song"); 
  println("Press R for Rewind");
  println("Press M to Mute");
  println("Press W for each song for it's Meta Data"); 
  println("Click Right or Left Arrow Key to Skip Song by 3 Seconds"); 
  println("You can either use keys, or press the buttons shown on the Program. Click Pause button twice to Pause/Unpause, and the Same with the Mute Button"); 
  //
  //Theme = minim.loadFile("Music/Media/Theme.mp3"); 
  //meta = Theme.getMetaData(); 
 // println("File Name: ", song[currentSong].fileName() );
  //
  minim = new Minim(this); //load from data directroy, loadFile() should also load from project folder, like loadImage()
  song[currentSong] = minim.loadFile("MusicMedia/Theme.mp3"); //able to pass absolute paths, file name & extesnion, and URL
  song[currentSong+=1] = minim.loadFile("MusicMedia/Secret Garden.mp3");
  song[currentSong+=1] = minim.loadFile("MusicMedia/Come Little Children (Instrumental).mp3");
  song[currentSong+=1] = minim.loadFile("MusicMedia/Playdate (Melanie Martinez) but it's on violin - TIKTOK VIOLIN - Joel Sunny.mp3");
  song[currentSong+=1] = minim.loadFile("MusicMedia/Love Nwantiti Violin.mp3");
  song[currentSong+=1] = minim.loadFile("MusicMedia/Ruth B Dandelions Piano.mp3");
  currentSong-=currentSong;
  for ( int i=currentSong; i<song.length; i++ ) {
  songMetaData[i] = song[i].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  }//End Meta Data
  //
  displayOrientation(); 
  
  //size(600, 500); // fullScreen(); displayWidth, displayHeight
  //
  background(aiya);
  fullScreen();
  //
  Variables(); 
  //
  fill(white);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  paper = false;
  //
 
}//End setup
//
void draw() {
 // MetaDataDraw(); 
  WaveForm(); 
  MuteandUnmutePic(); 
  //Rect beneath colours to make it look cool 
  /*
  noStroke(); 
  fill(blue2); 
  rect(rectcolour1X, rectcolour1Y, rectcolourWidth1, rectColourHeight1); 
  stroke(black);
  */
  //End of that Beneath Rect 
  //
  //Rectangle Setups to include info 
  fill(grey2); 
  //
  fill(aiya); 
  noStroke(); 
  rect( RectCover4X, RectCover4Y, RectCoverWidth4, RectCoverHeight4 ); 
  rect( RectCover2X, RectCover2Y, RectCoverWidth2, RectCoverHeight2); 
  stroke(reset); 
  fill(grey2); 
  //Squares Beneath the Shapes for Now 
  noStroke(); 
    rect(squareEllipse1X, squareEllipse1Y, squareEllipseWidth1, squareEllipseHeight1); 
    image(piccircle, squareEllipse1X, squareEllipse1Y, squareEllipseWidth1, squareEllipseHeight1) ; 
    rect(squareTriangle2X, squareTriangle2Y, squareTriangleWidth2, squareTriangleHeight2); 
    image(pictriangle,squareTriangle2X, squareTriangle2Y, squareTriangleWidth2, squareTriangleHeight2 ); 
    stroke(reset); 
  //
  //MUSIC BUTTON RECT
  noStroke(); 
  //rect(MusicButtonRect1X, MusicButtonRect1Y, MusicButtonRectWidth1, MusicButtonRectHeight1); 
  stroke(reset); 
  //
 // noFill(); 
  rect(MusicBtnSquare1X, MusicBtnSquare1Y, MusicBtnSquareWidth1, MusicBtnSquareHeight1);
  rect(MusicBtnSquare2X, MusicBtnSquare2Y, MusicBtnSquareWidth2, MusicBtnSquareHeight2);
  //rect(MusicBtnSquare3X, MusicBtnSquare3Y, MusicBtnSquareWidth3, MusicBtnSquareHeight3); //Pause Rect 
  rect(MusicBtnSquare4X, MusicBtnSquare4Y, MusicBtnSquareWidth4, MusicBtnSquareHeight4);
  rect(MusicBtnSquare5X, MusicBtnSquare5Y, MusicBtnSquareWidth5, MusicBtnSquareHeight5);
  rect(MusicBtnSquare6X, MusicBtnSquare6Y, MusicBtnSquareWidth6, MusicBtnSquareHeight6);
  rect(MusicBtnSquare7X, MusicBtnSquare7Y, MusicBtnSquareWidth7, MusicBtnSquareHeight7);
  rect(MusicBtnSquare8X, MusicBtnSquare8Y, MusicBtnSquareWidth8, MusicBtnSquareHeight8); 
  rect(MusicBtnSkipBack9X,  MusicBtnSkipBack9Y, MusicBtnSkipBackWidth9, MusicBtnSkipBackHeight9); 
  fill(grey2); 
  //
  image(picMusic1,MusicBtnSquare1X, MusicBtnSquare1Y, MusicBtnSquareWidth1, MusicBtnSquareHeight1 ); 
  image(picMusic2, MusicBtnSquare2X, MusicBtnSquare2Y, MusicBtnSquareWidth2, MusicBtnSquareHeight2); 
  //image(picMusic3,MusicBtnSquare3X, MusicBtnSquare3Y, MusicBtnSquareWidth3, MusicBtnSquareHeight3);  //Pause Picture 
  image(picMusic4, MusicBtnSquare4X, MusicBtnSquare4Y, MusicBtnSquareWidth4, MusicBtnSquareHeight4); 
  image(picMusic5, MusicBtnSquare5X, MusicBtnSquare5Y, MusicBtnSquareWidth5, MusicBtnSquareHeight5); 
  image(picMusic6, MusicBtnSquare6X, MusicBtnSquare6Y, MusicBtnSquareWidth6, MusicBtnSquareHeight6); 
  image(picMusic7, MusicBtnSquare7X, MusicBtnSquare7Y, MusicBtnSquareWidth6, MusicBtnSquareHeight7); 
  image(picMusic8, MusicBtnSquare8X, MusicBtnSquare8Y, MusicBtnSquareWidth8, MusicBtnSquareHeight8 ); 
  image(picSkipBack , MusicBtnSkipBack9X,  MusicBtnSkipBack9Y, MusicBtnSkipBackWidth9, MusicBtnSkipBackHeight9 ); 
  
  
  //
 //Three Rectangles Before 
 // rect(square1X, square1Y, square1Width, square1Height); 
 // rect(square2X, square2Y, square2Width, square2Height); 
 // rect(square3X, square3Y, square3Width, square3Height);
  //
  //Ellipses 
  //ellipse(maincircleX, maincircleY, maincircleDiameter, maincircleDiameter); FOR NOW ONLYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY 
  //Triangle + 2 other squares in Void dRaw 
  //triangle(maintriangle1X, maintriangle1Y, maintriangle2X, maintriangle2Y, maintriangle3X, maintriangle3Y); FOR NOW ONLYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY 
  noStroke(); 
  rect(drawline1X, drawline1Y, drawlineWidth1, drawlineHeight1); 
  image(picline, drawline1X, drawline1Y, drawlineWidth1, drawlineHeight1); 
  //rect(dottedline1X, dottedline1Y, dottedlineWidth1, dottedlineHeight1); 
  stroke(reset);
  //
  //Lines to seperate Areas for the Brush and Brush Sizes 
  line(line1X, line1Y, line1Width, line1Height); 
  line(line2X, line2Y, line2Width, line2Height); 
//line(line3X, line3Y, line3Width, line3Height); 
//line(line4X, line4Y, line4Width, line4Height); 
  //
  //Image Reference Drawing Button 
  //
  // Box4();
  noStroke(); 
  //Box3(); 
  //Box2(); 
  Box1();  
  fill(refimgcolour); //Hover over colours 
  //stroke(black); 
  rect(refimg1X, refimg1Y, refimgWidth1, refimgHeight1); 
  fill(black); //Ink
  textAlign( CENTER, CENTER); 
  size = 23; //Change to fit
  textFont(font2, size);
  text(Reference, refimg1X, refimg1Y, refimgWidth1, refimgHeight1);
  //
  //
  //Colour Book Button Drawing
  Box2(); 
  noStroke(); 
  fill(colourbookcolour); //Hover over colours 
  //noStroke(); //Might delete later Temporary Stuff 
  rect(colourbook1X, colourbook1Y, colourbookWidth1, colourbookHeight1); 
  fill(black); 
  textAlign(CENTER, CENTER);
  size= 21;
  textFont(font2, size); 
  text(ColourBook, colourbook1X, colourbook1Y, colourbookWidth1, colourbookHeight1); 
  //
  fill(grey2); 
  //rect( RectCover2X, RectCover2Y, RectCoverWidth2, RectCoverHeight2); 
  //
  Box3(); 
  //COLOURS WHEN PRESSED
  DrawColourButtons(); 
  //Reset Canvas Button 
  if ( paper==true ) {
  fill(white);
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  paper = false;
  }
  // Drawing Tools 
  Tools(); 
  Hover();
  Box4(); 
  Box5(); 
  //
  fill(MetaDataColour);
  noStroke(); 
  rect(MetaData1X, MetaData1Y, MetaDataWidth1, MetaDataHeight1); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 12; //Change to fit 
  textFont(font2, size);
  text(MetaData, MetaData1X, MetaData1Y, MetaDataWidth1, MetaDataHeight1); 
  fill(grey2); 
  stroke(reset); 
  
  
  //
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  //Quit Button Text
  fill(black); //Ink
  textAlign( CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change to fit
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Second Text
  fill(secondTextColour);
  noStroke(); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight); //Ink
  stroke(reset); 
  //Reset Canvas Text 
  fill(black); 
  textAlign( CENTER, CENTER); 
  size = 25; //Change to fit
  textFont(font2, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  // 
  // COLOURS OF THE SMOL BOXES 
  //stroke(#383838);  
  ColorBtns(); 
  //
  //Music Button Stuff 
  noStroke(); 
  fill(musicbuttoncolour);
  rect(musicbutton1X, musicbutton1Y, musicbuttonWidth1, musicbuttonHeight1); 
  fill(black); //Ink
  textAlign( CENTER, CENTER); 
  size = 20; //Change to fit
  textFont(font2, size);
  text(MusicButton, musicbutton1X, musicbutton1Y, musicbuttonWidth1, musicbuttonHeight1);
  //
  //Eraser 
  fill(grey2);
  noStroke(); 
  rect( Eraser1X, Eraser1Y, EraserWidth1, EraserHeight1); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 18; //Change to fit 
  textFont(font2, size);
  text(EraserText,Eraser1X, Eraser1Y, EraserWidth1, EraserHeight1 ); 
  fill(grey2); 
  //
  //
  
  fill(grey2);
  noStroke(); 
  rect(squarebigX, rectsquarebigY, rectsquareWidth, rectsquareHeight); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 15; //Change to fit 
  textFont(font2, size);
  text(Square, squarebigX, rectsquarebigY, rectsquareWidth, rectsquareHeight ); 
  fill(grey2); 

  //
  stroke(black); //This part needed if outlines are to remain on other shapes for Brushes Sizes etc. 
  //Size Squares 
  noStroke(); 
  //Rects  
  rect(size1X, size1Y, sizeWidth1, sizeHeight1); 
  rect(size2X, size2Y, sizeWidth2, sizeHeight2); 
  rect(size3X, size3Y, sizeWidth3, sizeHeight3); 
  rect(size4X, size4Y, sizeWidth4, sizeHeight4); 
  rect(size5X, size5Y, sizeWidth5, sizeHeight5); 
  //  
  rect(strokweight1X, strokeweight1Y, strokeweightWidth1, strokeweightHeight1);
  rect(strokweight2X, strokeweight2Y, strokeweightWidth2, strokeweightHeight2);
  rect(strokweight3X, strokeweight3Y, strokeweightWidth3, strokeweightHeight3);
  rect(strokweight4X, strokeweight4Y, strokeweightWidth4, strokeweightHeight4);
  rect(strokweight5X, strokeweight5Y, strokeweightWidth5, strokeweightHeight5);
  stroke(black); 
  //
  // Sizes 
  fill(grey2);
  noStroke(); 
  rect(size5X, size5Y, sizeWidth5, sizeHeight5); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 15; //Change to fit 
  textFont(font2, size);
  text(Reset, size5X, size5Y, sizeWidth5, sizeHeight5); 
  fill(grey2); 
  //
  fill(grey2);
  noStroke(); 
  rect(strokweight5X, strokeweight5Y, strokeweightWidth5, strokeweightHeight5); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 15; //Change to fit 
  textFont(font2, size);
  text(Reset, strokweight5X, strokeweight5Y, strokeweightWidth5, strokeweightHeight5); 
  fill(grey2); 
  //
  //Instruction Texts 
  //rect(instruction1X, instruction1Y, instructionWidth1, instructionHeight1); 
  
  fill(grey2);
  noStroke(); 
  rect(instruction1X, instruction1Y, instructionWidth1, instructionHeight1); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 13; //Change to fit 
  textFont(font2, size);
  text(InfoaboutSizes, instruction1X, instruction1Y, instructionWidth1, instructionHeight1); 
  fill(grey2); 
  
  fill(grey2);
  noStroke(); 
  rect(instruction2X, instruction2Y, instructionWidth2, instructionHeight2); 
  fill(black); //Ink 
  textAlign(CENTER, CENTER); 
  size = 13; //Change to fit 
  textFont(font2, size);
  text(InfoaboutSizes2, instruction2X, instruction2Y, instructionWidth2, instructionHeight2); 
  fill(grey2); 
  stroke(reset); 
  //rect(instruction2X, instruction2Y, instructionWidth2, instructionHeight2);
  noStroke(); 
  fill(aiya); 
  rect( RectCover1X, RectCover1Y, RectCoverWidth1, RectCoverHeight1); 
  stroke(reset); 
  fill(grey2); 
  
   noFill(); 
  rect(rectbigX, rectbigY, rectbigWidth, rectbigHeight); 
  fill(grey2); 
  noStroke(); 
  rect(rectsmallX, rectsmallY, rectsmallWidth, rectsmallHeight); 
  stroke(black); 
  fill(black); //Ink
  textAlign( LEFT, CENTER); 
  size = 25; //Change to fit
  textFont(font2, size);
  text(BrushSize, rectsmallX, rectsmallY, rectsmallWidth, rectsmallHeight);
  //

}//End draw
//
void keyPressed() {
  metadata(); //Can't put in void draw cuz repeats 10000 times, Can't put in setup cuz only talks about 1 song, so insert in keypressed. Press a button if u wanna know about it  
  Rewind(); 
  Mute(); 
  Play(); 
  NextSong(); 
  Random();
  PreviousSong(); 
  SkipForward(); 
  SkipBackward(); 
  //SlowDownSong();
}//End keyPressed
//
//
void mousePressed() {
  
  //
  RewindMousePressed(); 
  MuteMousePressed();
  NextSongMousePressed(); 
  PlayMousePressed(); 
  PreviousSongMousePressed(); 
  SkipForwardMousePressed(); 
  SkipBackwardMousePressed(); 
  MetaDataMousePressed(); 
  //
 //Reference Button 
 if( mouseX>=refimg1X && mouseX<=refimg1X+refimgWidth1 && mouseY>=refimg1Y && mouseY<=refimg1Y+refimgHeight1) { 
  if(Box1On == false) { 
    Box1On = true; 
  }else{
    Box1On=false; 
   // println("Reference Image");
  } 
 } 
 
 //
 //Buttons for the Reference Poses Pictures
  if( mouseX>=refimgsmall1X && mouseX<=refimgsmall1X+refimgsmallWidth1 && mouseY>=refimgsmall1Y && mouseY<=refimgsmall1Y+refimgsmallHeight1) { 
  println("Reference Image 1");
  }
  if ( mouseX>=refimgsmall2X && mouseX<=refimgsmall2X+refimgsmallWidth2 && mouseY>=refimgsmall2Y && mouseY<=refimgsmall2Y+refimgsmallHeight2 ) { 
    println("Reference Image 2"); 
  } 
  if ( mouseX>=refimgsmall3X && mouseX<=refimgsmall3X+refimgsmallWidth3 && mouseY>=refimgsmall3Y && mouseY<=refimgsmall3Y+refimgsmallHeight3 ) { 
    println("Reference Image 3"); 
  }
  //
  //Colour Book Button 
   if( mouseX>=colourbook1X && mouseX<=colourbook1X+colourbookWidth1 && mouseY>=colourbook1Y && mouseY<=colourbook1Y+colourbookHeight1) { 
  if(Box2On == false) { 
    Box2On = true; 
  }else{
    Box2On=false; 
    //println("ColourBook");
  } 
 }
  //Buttons for the ColourBook Pictures 
  if(mouseX>=colourbooksmall1X && mouseX<=colourbooksmall1X+colourbooksmallWidth1 && mouseY>=colourbooksmall1Y && mouseY<=colourbooksmall1Y+colourbooksmallHeight1) {
   image(picbackground3, drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight); //Maybe Change Image for the Bird 
   println("ColourBook Pic 1"); 
  }
  if(mouseX>=colourbooksmall2X && mouseX<=colourbooksmall2X+colourbooksmallWidth2 && mouseY>=colourbooksmall2Y && mouseY<=colourbooksmall2Y+colourbooksmallHeight2) {
   image(picbackground2, drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
   println("ColourBook Pic 2"); 
  }
  //
  //Box3On for Ref images where it will show up 
  if (mouseX>=refimgsmall1X && mouseX<=refimgsmall1X+refimgsmallWidth1 && mouseY>=refimgsmall1Y && mouseY<=refimgsmall1Y+refimgsmallHeight1){ 
    if(Box3On==false){
      Box3On = true; 
      Box4On=false; 
      Box5On=false; 
    } else {
      Box3On=false; 
      Box4On=false; 
      Box5On=false; 
     // println("Ref Img Working lul?");
    }
  } 
  //
  //Box4On for Ref images where it will show up 
  if (mouseX>=refimgsmall2X && mouseX<=refimgsmall2X+refimgsmallWidth2 && mouseY>=refimgsmall2Y && mouseY<=refimgsmall2Y+refimgsmallHeight2){ 
    if(Box4On==false){
      Box3On=false; 
      Box5On=false; 
      Box4On = true; 
    } else {
      Box4On=false;
      Box3On=false; 
      Box5On=false; 
     // println("Ref Img Working lul 2?");
    }
  } 
   //Box5On for Ref images where it will show up 
  if (mouseX>=refimgsmall3X && mouseX<=refimgsmall3X+refimgsmallWidth3 && mouseY>=refimgsmall3Y && mouseY<=refimgsmall3Y+refimgsmallHeight3){ 
    if(Box5On==false){
      Box5On = true; 
      Box4On=false; 
      Box3On=false; 
    } else {
      Box5On=false; 
      Box5On=false; 
      Box3On=false; 
     // println("Ref Img Working lul 3?");
    }
  } 
  //
  //Sizes IT WORKS YAEYAYEYAYEY 
  if( mouseX>=size1X && mouseX<=size1X+sizeWidth1 && mouseY>=size1Y && mouseY<=size1Y+sizeHeight1 ) {  
  println("Size1");
  drawingDiameter= width*1.5/100; 
  }
  if( mouseX>=size2X && mouseX<=size2X+sizeWidth2 && mouseY>=size2Y && mouseY<=size2Y+sizeHeight2 ) {  
  println("Size2");
  drawingDiameter= width*2/100; 
  }
  if( mouseX>=size3X && mouseX<=size3X+sizeWidth3 && mouseY>=size3Y && mouseY<=size3Y+sizeHeight3 ) {  
  println("Size3+");
  drawingDiameter= width*2.5/100; 
  }
  if( mouseX>=size4X && mouseX<=size4X+sizeWidth4 && mouseY>=size4Y && mouseY<=size4Y+sizeHeight4 ) {  
  println("Size4");
  drawingDiameter= width*3/100; 
  }
  if( mouseX>=size5X && mouseX<=size5X+sizeWidth5 && mouseY>=size5Y && mouseY<=size5Y+sizeHeight5 ) {  
  println("Size5");
  drawingDiameter= width*1/100; 
  }
 

  
  
  
  //
  //Tools and  
  //
    /*
     if( mouseX>=refimg1X && mouseX<=refimg1X+refimgWidth1 && mouseY>=refimg1Y && mouseY<=refimg1Y+refimgHeight1) { 
 if ( Box1On=true) { 
   Box1On = true; 
 println("");
 }
    */
 //
 /*
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (ellipse == true) {
      drawEllipse = true;
      rect = false;
    }
    else if (rect=true) {
      drawRect = true;
      ellipse = false;
    }
    else {
      drawEllipse = false;
      drawRect = false;
    }
  }
 */
 //
 //CHOOSING COLOURS 
 mousePressedColorButtons(); 
 //End of CHOOSING COLOURS 
 //
 fill(white); 
 if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight ) {
    if ( draw==true ) {
      draw=false;
    } else {
      draw=true;
    }//End draw Boolean
  }//End Paper Button (Draw Surface)  
  //
  //Quit Button MousePressed Thing 
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
  //New Piece of Paper - Reset Canvas 
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) paper=true;
  //
  //
  //BUTTONS FOR THE BRUSHES AND BRUSH SIZES
  /*
   if (  mouseX>=square1X && mouseX<=square1X+square1Width && mouseY>=square1Y && mouseY<=square1Y+square1Height ) {
     println("Your mom");
    if ( DrawSquare==true ) {
      DrawSquare=false;
    } else {
      DrawSquare=true;
    } 
   } 
   */
   DrawSquare(); 
   DrawLine();
   DrawEllipse(); 
   DrawTriangle(); 
   Eraser();  
  //
  stroke1(); 
  stroke2();
  stroke3();
  stroke4();
  stroke5(); 
  stroke(reset);  
  //
  //ELLIPSE BUTTON JUST FOR CIRCLE TO SEE 
  //
  //maincircleX, maincircleY, maincircleDiameter; 
  //
}//End mousePressed

/*
void mouseReleased() {
if (squareSmall == true) {
    draw = false;
  }
  else if (draw == true) {
    draw = false;
  }
  else {
    squareSmall = false;
    draw = false;
  }
}
//
if (draw == true) {
    squareSmall = false;
  }
  else if (draw == true) {
    squareSmall = false;
  }
  else {
    squareSmall = false;
    draw = false;
  }
}
//
//End MAIN


/*


if ( mouseX>=square1X && mouseX<=square1X+square1Width && mouseY>=square1Y && mouseY<=square1Y+square1Height ) { 
    if( squareSmall==true ) { 
      squareSmall=false; 
      draw=false; 
    } else {
      squareSmall=true; 
      draw=false; 
    } 
  }


*/
