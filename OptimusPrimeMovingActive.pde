import processing.sound.*;
SoundFile MegatronMustBeStopped;
SoundFile TheT;
SoundFile Flying;
SoundFile BumblebeeVoice;
SoundFile MegatronVoice;

PImage ark3;
PImage ark4;
PImage AutobotSymbol;
PImage Scratchh;
PImage Mars;
//PImage[] Blast;
PImage Blast;
PImage BlueBeam;
PImage Space;
PImage EngineLight;
PImage bg;
PImage Earth;

PImage ARK;
PImage atmosphere;

PImage Megatron;
PImage MovieTitle;

int Background;

int Mouth;
int MouthColour;
float Begin;


int SpaceMove;
int SpaceMove2;
int SpaceMove3;
int SpaceSpeed;
int SpaceGap;

int MarsX;
int MarsY;
int MarsSize;
int MarsXmove;
int MarsGone;

int EarthX;

int ArkGo;
int ArkSide;
int ArkBehind;
float ArkBehindY;

int ArkAboveMusic;
int PanelsMove;
int MegatronFront;
int MegatronGone;

int BlueScreen;
int MGT;
int RectUp;
int RectDown;
int RectLeft;
int RectRight;
int BumblebeeSpeak;
int MegatronSpeak;

float ArkMegatron;
int OP;
int blackscreen;
int TruckMoving;
int truckblack;

int B1X;
int B2X;
int B3X;
int B4X;
int B5X;
int B6X;
int B7X;
int TruckMovingY;
int SkyMoving;
int Bluescreen;

boolean SpaceMoving = true;
boolean SpaceBackground = true;

boolean counting = false;
boolean ArkMove = false;
boolean ArkSideWays = false;
boolean MarsLook = true;
boolean BlueBeamEngine = false;
boolean PlanetEarth = false;
boolean ArkBack = false;
boolean ArkBehindMove = true;

boolean ArkAbove = false;
boolean FlyingSound = true;
boolean AMtransition = false;

boolean MegatronV = true;
boolean BumblebeeV = true;

boolean MegatronTalk = false;
boolean ArkPanels = false;
boolean ScreenMove = true;

boolean MegatronBehind = false;

boolean OPfinish = false;
boolean PrimeTalk = false;
boolean PrimeSpeak = true;
boolean PrimeFinishSpeak = false;
int BlackScreen;
boolean TheTouch = true;
int TheTo;

boolean TruckMode = false;
boolean TruckBlack = false;
boolean TruckWheel = false;
boolean Title = false;

void setup() {
  fullScreen();
  //size(1440,900);  
  smooth(); 

  MegatronMustBeStopped = new SoundFile (this,"MegatronMustBeStopped.mp3");
  TheT = new SoundFile (this,"TheT.mp3");
  Flying = new SoundFile (this,"Flying.mp3");
  BumblebeeVoice = new SoundFile(this,"BumblebeeVoice.mp3");
  MegatronVoice = new SoundFile (this,"MegatronVoice.mp3");
  //MegatronMustBeStopped.play();
  TheT.amp(0.5);
  BumblebeeVoice.amp(50);
 
  Space = loadImage("SpaceV.png");
   
  ark3 = loadImage("ark3.jpg");
  ark4 = loadImage("ark4.jpg"); 
  AutobotSymbol = loadImage("AutobotSymbol.png");
  Scratchh = loadImage("Scratchh.png");
  Mars = loadImage("Mars.png");
  
  //Blast = new PImage[6];
  //  Blast[1] = loadImage("frame_0_delay-0.02s");
  
  
  Blast = loadImage("Blast.gif");
  BlueBeam = loadImage("BlueBeam.png");
  EngineLight = loadImage("Light.png");
  bg = loadImage("bg.png");
  Earth = loadImage("Earth.png");
  
  ARK = loadImage("TheArk.png");
  atmosphere = loadImage("atmosphere.png");
  
  Megatron = loadImage("Megatron.png");
  MovieTitle = loadImage("MovieTitle.png");
  
  SpaceMove = 0;
  SpaceMove2 = 1440;
  SpaceMove3 = 1440;
  SpaceSpeed = 1;
  SpaceGap = 0;

  Mouth = 340;
  MouthColour = 440;
  Begin = 255;
  
  
  MarsX = 1800;
  MarsY = 1800;
  MarsSize = 0;
  MarsXmove = 720;
  MarsGone = 0;
  
  EarthX = 1515;
  
  ArkGo = 0;
  ArkSide = -1440;
  ArkBehind = 780;
  ArkBehindY = 0;
  
  ArkAboveMusic = 0;
  PanelsMove = 0;
  MegatronFront = 0;
  MegatronGone = 0;
  
  BlueScreen = 60;
  MGT = 0;
  RectUp = 0;
  RectDown = 700;
  RectLeft = 0;
  RectRight = 1140;
  
  ArkMegatron = 0;
  OP = 0;

  blackscreen = 0;
  BlackScreen = 0;
  TheTo = 0;
  TruckMoving = 0;
  truckblack = 255;
  
  B1X = 0;
  B2X = 0;
  B3X = 0;
  B4X = 0;
  B5X = 0;
  B6X = 0;
  B7X = 0;
  TruckMovingY = 0;
  SkyMoving = 0;
  Bluescreen = 255;
}

//=========================================================================================================================================================================================

void draw() {
  println(frameRate);
  //println(mouseX,mouseY);
  background(#009AEA);
  
  if (SpaceBackground){
    image(Space,SpaceMove,0);
    image(Space,SpaceMove2,0);
    image(Space,SpaceMove3,0);
  }
  
  if(ArkAbove){
    image(atmosphere,0,0);
  }
  

  if (PrimeTalk){// PrimeTalk Begins
    image(ark3, 0, 0, 1440, 900);// background ark
  
    fill(80);
    stroke(0);
    strokeWeight(4);
    rect(1200, 800, 80, 100);// right arm conenction
    rect(160, 800, 80, 100);// left arm connnection



  
    fill(50);
    strokeWeight(3);
    rect(1200, 816, 80, 100);// right shoulde rconnection dark
    rect(160, 816, 80, 100);// right shoulde rconnection dark
  
    fill(80);
    strokeWeight(2);
    rect(1225, 817, 8, 50);//right shoulder connection vertical rect
    rect(208, 817, 8, 50);//left should connection vertical rect
  
    line(1227, 868, 1227, 900);// righht shoulder connection thick line
    line(214, 868, 214, 900);// left shoulder connection thick line
  
    strokeWeight(1.5f);
    line(1236, 812, 1236, 900);// right shoulder connection thin line
    line(206, 812, 206, 900);// left shoulder conncetion thin line
  
  
    fill(30);
    stroke(0);
    strokeWeight(2);
    ellipse(1236, 875, 6, 6);
    ellipse(1236, 888, 6, 6);
  
    ellipse(206, 875, 6, 6);
    ellipse(206, 888, 6, 6);
  
  
    fill(0xffBF0006);
    stroke(0);
    strokeWeight(8);
    beginShape();// left shoulder
    vertex(-20, 700);
    vertex(210, 720);
    vertex(195, 910);
    vertex(-20, 910);
    endShape();
  
    fill(0xffAF0006);
    beginShape();// right shoulder
    vertex(1460, 700);
    vertex(1230, 720);
    vertex(1250, 910);
    vertex(1460, 910);
    endShape();
  
  
    //pushMatrix();
    //translate(-20, 720);
    //rotate(radians(5));
    //LeftShoulderScratch();
    //popMatrix();
  
    //pushMatrix();
    //translate(1240, 720);
    //rotate(radians(-5));
    //RightShoulderScratch();
    //popMatrix();
  
  
    fill(0xffA20005);
    strokeWeight(3);
    beginShape();// left shoulder top line
    vertex(-20, 720);
    vertex(206, 740);
    vertex(208, 722);
    vertex(-20, 702);
    endShape();
  
    fill(0xff810004);
    beginShape();// right shoulder top line
    vertex(1460, 720);
    vertex(1234, 740);
    vertex(1232, 722);
    vertex(1460, 702);
    endShape();
  
    fill(0xff7C0004);
    strokeWeight(1);
    ellipse(0, 740, 12, 12);// left shoulder circles
    ellipse(40, 744, 12, 12);
    ellipse(80, 748, 12, 12);
    ellipse(120, 752, 12, 12);
    ellipse(160, 756, 12, 12);
  
    ellipse(1440, 740, 12, 12);// left shoulder circles
    ellipse(1400, 744, 12, 12);
    ellipse(1360, 748, 12, 12);
    ellipse(1320, 752, 12, 12);
    ellipse(1280, 756, 12, 12);
  
    fill(250);
    strokeWeight(2);
    beginShape();// Autobot Symbol white base
    vertex(1278, 802);
    vertex(1325, 798);
    bezierVertex(1375, 782, 1390, 776, 1440, 782);
    vertex(1440, 900);
    vertex(1304, 900);
    endShape(CLOSE);
  
    pushMatrix();
    rotate(radians(-5));
    image(AutobotSymbol, 1180, 880, 300, 300);// Autobot SYmbol
    popMatrix();
    
    pushMatrix();
    translate(420, 100);
    OptimusPrimeFront();// Optimus Prime Front
    popMatrix();
  }// PrimeTalk ends
  
//===================================================================================================================================================================================================================
  
  if (MegatronTalk){// Megatron talks 
    stroke(1);
    fill(0xff7F3200);
    rect(0,700,1440,200);
    
    fill(0xffA93900);
    strokeWeight(1);
    beginShape();// middle shape base bottom
    vertex(580,700);
    vertex(420,500);
    vertex(520,330);
    vertex(800,370);
    vertex(810,400);
    endShape();
  
    fill(0xff7C2903);
    beginShape();// middle shape top piece
    vertex(520,330);
    vertex(670,150);
    vertex(880,200);
    vertex(800,370);
    endShape(CLOSE);
  
    fill(0xff74300C);
    beginShape();// middle shape side
    vertex(580,700);
    vertex(420,500);
    vertex(520,330);
    vertex(670,150);
    vertex(670,120);
    vertex(160,340);
    vertex(160,730);
    endShape(CLOSE);
    
    line(420,500, 0,600);
    
    fill(0xff9A4404);
    strokeWeight(2);
    quad(670,150, 670,120, 880,175, 880,200);
    
    fill(0xff7F2605);
    strokeWeight(1);
    beginShape();// right base
    vertex(1440,740);
    vertex(580,700);
    vertex(760,400);
    vertex(1000,350);
    vertex(1100,130);
    vertex(1300,0);
    vertex(1440,0);
    endShape();
    
    fill(0xff7F2605);
    beginShape();// right base right piece
    vertex(1440,0);
    vertex(1300,0);
    vertex(1100,130);
    vertex(1000,350);
    vertex(960,718);
    vertex(1440,740);
    endShape();
    
    line(1000,350, 1440,280);// horizontal line right piece
    
    fill(0xff793A07);
    beginShape();// right piller left side
    vertex(1440,20);
    vertex(1340,50);
    vertex(1290,120);
    vertex(1290,760);
    vertex(1380,770);
    vertex(1380,110);
    endShape(CLOSE);
    
    line(1290,120, 1380,110);// horizontal right piller line
    
    fill(0xff612300);
    beginShape();// right piller right side
    vertex(1440,90);
    vertex(1420,750);
    vertex(1380,770);
    vertex(1380,110);
    vertex(1440,20);
    endShape(CLOSE);
    
    fill(0xff852909);
    beginShape();// left base
    vertex(-2,-2);
    vertex(300,-2);
    vertex(300,800);
    vertex(200,900);
    vertex(-2,900);
    endShape(CLOSE);
    
    line(290,-2, 290,796); 
    line(290,796, 188,900);
    
    fill(0xffBF5D1F);
    beginShape();// left piece middle
    vertex(-2,300);
    vertex(304,370);
    vertex(304,520);
    vertex(-2,450);
    endShape(CLOSE);
    
    ellipse(230,430,70,100);// left middle circle
   
    
    imageMode(CENTER);
    image(Megatron,720,490);
    
    fill(0xff1AEEFF,BlueScreen);
    rect(0,0,1440,900);
    
    fill(0xffD67818);
    noStroke();
    rect(0,RectUp,1440,120);// top
    rect(0,RectDown,1440,200);// bottom
    rect(RectLeft,0,300,900);// left
    rect(RectRight,0,300,900);// right
    
    stroke(0);
    if (ArkPanels){
      pushMatrix();
      translate(RectLeft,0);
      LeftArkPanel();
      popMatrix();
    }  
    if (ArkPanels){
      pushMatrix();
      translate(RectRight-1140,0);
      RightArkPanel();
      popMatrix();
    }
    if (ArkPanels){
      pushMatrix();
      translate(0,RectUp);
      UpArkPanel();
      popMatrix();
    }
    if (ArkPanels){
      pushMatrix();
      translate(0,RectDown-700);
      BottomArkPanel();
      popMatrix();
    }
    if (ArkPanels){
      pushMatrix();
      translate(0,RectDown-700);
      Bumblebee();
      popMatrix();
    }
    
  }// Megatron talks end
  
  if (MegatronBehind){
    MegatronBehind();
    pushMatrix();
    stroke(0);
    translate(0,ArkMegatron);
    ArkMegatron();
    popMatrix();
  }
  
  
  
  //fill(0);// space background
  //noStroke();
  //rect(0, 0, 1440, 900);
 
  if (MarsLook){
    imageMode(CENTER);
    image(Mars, MarsXmove, 450, MarsX, MarsY);// Mars
  }
  
  if (PlanetEarth){
    imageMode(CENTER);
    image(Earth,EarthX,450,150,150);
  }
  
  if (ArkBack){
    pushMatrix();
    imageMode(CENTER);
    translate(ArkBehind,ArkBehindY);
    ArkBehind();
    popMatrix();
  }
  
  if (ArkAbove){
    imageMode(CENTER);
    image(ARK,720,450);
  }
  
  if (TruckMode){
    pushMatrix();
    translate(B1X,TruckMovingY);
    B1();
    popMatrix();
    
    pushMatrix();
    translate(B2X,TruckMovingY);
    B2();
    popMatrix();
    
    pushMatrix();
    translate(B3X,TruckMovingY);
    B3();
    popMatrix();
    
    pushMatrix();
    translate(B4X,TruckMovingY);
    B4();
    popMatrix();
    
    pushMatrix();
    translate(B5X,TruckMovingY);
    B5();
    popMatrix();
    
    pushMatrix();
    translate(B6X,TruckMovingY);
    B6();
    popMatrix();
    
    pushMatrix();
    translate(B7X,TruckMovingY);
    B7();
    popMatrix();
    
    imageMode(CENTER);
    pushMatrix();
    translate(0,TruckMovingY);
    Truck();
    popMatrix();
  }
  
  if (Title){
    imageMode(CENTER);
    image(MovieTitle,720,450);
    stroke(#233E9D);
    strokeWeight(8);
    rect(0,1,1438,896);
    noStroke();
    fill(#009AEA,Bluescreen);
    rect(0,0,1440,900);
  }
  
  imageMode(CORNER);
  

  fill(0, 0, 0, Begin);// beginning Fade
  noStroke();
  rect(0, 0, 1440, 900);
  
  if (ArkSideWays){
    pushMatrix();
    stroke(0);
    translate(ArkSide,10);
    ArkSide();// The Ark Sideways
    popMatrix();
  }
  
  if (PrimeFinishSpeak){
    fill(0,0,0,blackscreen);
    rect(0,0,1440,900); 
  } 
  
  if (TruckBlack){
    fill(0,0,0,truckblack);
    rect(0,0,1440,900);
  }

if (counting) { // counting true begins
     Begin = Begin - 2;// beginning fading
     
    if (Begin<=20) {    
      Begin = 20;
      MarsSize = 1;
    }
  
  if (MarsSize==1){// change Mars width and height
    MarsX = MarsX - 14;
    MarsY = MarsY - 14; 
    
    if(MarsX<=820){
      MarsX = 820;
      ArkSideWays = true;
      ArkGo = ArkGo + 1;
    }
    if(MarsY<=820){
      MarsY = 820;
    }
      
  }
  if (ArkGo>=30){// Ark side moves
    ArkGo = 30;
    ArkSide = ArkSide + 180;
    if (ArkMove){// after Mars disappear   
      if (ArkSide>=30){
        ArkSide = ArkSide + 140;
        if (ArkSide>=1440){
          ArkSide = 1440;
          ArkSideWays = false;// 
          BlueBeamEngine = false;
        }
      }
      if (ArkSide==1440){
        SpaceGap = SpaceGap + 1;
      }
    }
    else if(ArkSide>=20){// before Mars disappear
       ArkSide = 20;
       MarsGone = 1;
    }
  }
  
  if (MarsGone==1){// Mars move left
    MarsXmove = MarsXmove - 6;
    if (SpaceMoving){
    SpaceMove = SpaceMove - SpaceSpeed;
    }
      if(MarsXmove<=-1200){
        MarsXmove = -1200;
        MarsLook = false;// Mars disappear
        ArkMove = true;
      }
      if (MarsXmove<=-1000){
        BlueBeamEngine = true;
      }
  }
  
  if (SpaceMove<=-480){// Space background move
    if (SpaceMoving){  
      SpaceMove2 = SpaceMove2 - SpaceSpeed;
    }
  }
  
  if (SpaceMove2<=-480){// Space background move
    if (SpaceMoving){  
      SpaceMove3 = SpaceMove3 - SpaceSpeed;
    }
  }
  
  if (SpaceMove3<=-480){
    SpaceMoving = false;// Space1 and Space2 stops moving
    ArkBehindMove = false;
  }
  
  if (ArkBehind<=0){
    ArkBehind = 0;
    ArkBehindY = ArkBehindY - 0.1;
  }
  
  if (EarthX<=720){
    EarthX = 720;
  }
  
  if (SpaceGap>=50){
    SpaceGap = 50;
    SpaceSpeed = 30;
  }
  
  if (SpaceMove2<=-1300){// space speed back to 1
    SpaceSpeed = 1;
  }
  
  if (SpaceMove3<=315){
    PlanetEarth = true;
    EarthX = EarthX -  1;
  }
  
  if (SpaceMove3<=300){// ArkBehind moves
    ArkBack = true;
    ArkBehind = ArkBehind - 1;
  }
  
  if (ArkBehindY<=-50){// Ark moving towards Earth
    ArkBehind = -50;
    SpaceBackground = false;
    PlanetEarth = false;
    ArkBack = false;
    ArkAbove = true;
    ArkAboveMusic = ArkAboveMusic + 1;
  }
  
  if (FlyingSound){
    if (ArkAboveMusic>=5){
      ArkAboveMusic = 5;
      Flying.play();
      delay(9000);
      AMtransition = true;
    }
  }
  
  if (AMtransition){
    Flying.stop();
    FlyingSound = false;
    ArkAbove = false;
    MegatronTalk = true; 
    ArkPanels = true;
    MGT = MGT + 1;
  }
  
  if (BumblebeeV){
    if (MGT>=40){
      MGT = 40;
      BumblebeeVoice.play();
      delay(3000);
      PanelsMove = PanelsMove + 5;
    }
  }
  
  if (PanelsMove>=5){
    PanelsMove = 5;
    BumblebeeV = false;
    ScreenMove = true;
    if (ScreenMove){
      RectUp = RectUp -1;
      RectDown = RectDown + 2;
      RectLeft = RectLeft - 2;
      RectRight = RectRight + 2;
    }  
  }
  if (RectDown>=1191){
      ScreenMove = false;
      ArkPanels = false;
      BlueScreen = BlueScreen - 1;
      if (BlueScreen<=0){
        BlueScreen = 0;
      }
   }
    
  if (MegatronV){
    if (BlueScreen==0){
      MegatronVoice.play();
      delay(5000);
      MegatronFront = MegatronFront + 5;
    }
  }
  
  if (MegatronFront>=5){
    MegatronFront = 5;
    MegatronVoice.stop();
    MegatronV = false;
    MegatronGone = MegatronGone + 1;
  }

  if (MegatronGone>=40){
    MegatronGone = 40;
    MegatronTalk = false;
    MegatronBehind = true;
  }

 if (MegatronBehind){
   ArkMegatron = ArkMegatron + 1;
 }
  
 if (ArkMegatron>=261){ 
   ArkMegatron = 261;
   MegatronBehind = false;
   PrimeTalk = true;
   BlackScreen = BlackScreen + 1;
 }

 if (PrimeTalk){
   if (BlackScreen>=5){
     BlackScreen = 5;
     OPfinish = true;
   }
 }
 
 if (PrimeSpeak){
   if (OPfinish){
     MegatronMustBeStopped.play();
     delay(6000);
     PrimeFinishSpeak = true;
   }
 }
 
 if (PrimeFinishSpeak){
   MegatronMustBeStopped.stop();
   PrimeSpeak = false;
   blackscreen = blackscreen + 20;
 }
 
 if (blackscreen>=600){
   TruckBlack = true;
   PrimeTalk = false;
   PrimeFinishSpeak = false;
   TruckMode = true;
   TheTo = TheTo + 1;
 }
 
 if (TheTouch){
   if (TheTo>=1){
     TheTo = 1;
     TheT.play();
     TruckWheel = true;
   }
 }
 
 if (TruckWheel){
   truckblack = truckblack - 2;
   if (truckblack<=0){
     truckblack = 0;
   }
   TruckMoving = TruckMoving + 5;
 }

  if (TruckMode){
    SkyMoving = SkyMoving + 1;
    B1X = B1X - 5;
    B2X = B2X - 5;
    B3X = B3X - 5;
    B4X = B4X - 5;
    B5X = B5X - 5;
    B6X = B6X - 5;
    B7X = B7X - 5;
    if (B1X<=-240){
      B1X = 1440;
    }
    if (B2X<=-480){
      B2X = 1200;
    }
    if (B3X<=-720){
      B3X = 960;
    }
    if (B4X<=-960){
      B4X = 720;
    }
    if (B5X<=-1200){
      B5X = 480;
    }
    if (B6X<=-1440){
      B6X = 240;
    }
    if (B7X<=-1680){
      B7X = 0;
    }  
    if (SkyMoving>=3800){
      SkyMoving = 3800;
      TruckMovingY = TruckMovingY + 2;
    }
    
  }
  
  if (TruckMovingY>=1200){
      TruckMoving = 1200;
        TruckMode = false;
        TruckWheel = false;
        Title = true;
  }
  
  if (Title){
    Bluescreen = Bluescreen - 1;
  }

 
 if (TheT.isPlaying()){
   TheTouch = false;
 }
 
}// counting true ends 
    
   
  
  
  
  
  
  
  
}// void draw
//=========================================================================================================================================================================================
public void keyPressed() {
  counting = true;
}

















//=========================================================================================================================================================================================
//void LeftShoulderScratch() {
//  image(Scratchh, 0, 0, 220, 360);
//}
//void RightShoulderScratch() {
//  image(Scratchh, 0, 0, 220, 360);
//}
//=========================================================================================================================================================================================

  void B1(){
    fill(#B25D1D);
    stroke(0);
    strokeWeight(2);
    rect(0,171,240,500);
    strokeWeight(1);
    line(23,171,23,461);
    ellipse(23,471,20,20);
    line(34,471,96,471);
    rect(96,447,60,223);
    line(111,171,111,447);
    ellipse(184,341,80,80);
  }
  void B2(){
    fill(#B2451D);
    stroke(0);
    strokeWeight(2);
    rect(300,80,120,490);
    beginShape();
    vertex(240,671);
    vertex(280,560);
    vertex(440,560);
    vertex(480,671);
    endShape();
    rect(240,50,240,80);
    fill(#ADF3FF);
    rect(255,65,210,30);
    strokeWeight(1);
    line(331,131,331,388);
    fill(0,0,0,0);
    rect(321,388,30,100);
    line(351,438,420,438);
    line(388,438,388,560);
    ellipse(378,268,50,50);
    line(339,561, 284,671);
    line(359,561, 304,671);
  }
  void B3(){
    fill(#B2761D);
    stroke(0);
    strokeWeight(2);
    quad(480,671, 580,520, 720,520, 720,671);
    strokeWeight(1);
    line(510,671, 592,550);
    line(592,550, 695,550);
    line(695,550, 695,671);
  }
  void B4(){
    fill(#AA5115);
    stroke(0);
    strokeWeight(2);
    rect(720,323,240,348);
    strokeWeight(1);
    triangle(736,341, 938,341, 938,642);
    triangle(736,367, 736,653, 933,653);
    ellipse(796,584,30,30);
    ellipse(885,409,30,30);
  }
  void B5(){
    fill(#B2451D);
    stroke(0);
    strokeWeight(2);
    beginShape();
    vertex(960,671);
    vertex(960,175);
    vertex(1200,175);
    vertex(1200,405);
    vertex(1010,438);
    vertex(1010,671);
    endShape();
    fill(#ADF3FF);
    quad(1140,195, 1190,195, 1190,268, 1140,268);
    strokeWeight(1);
    fill(0,0,0,0);
    line(967,175,967,671);
    line(1043,432, 1043,299);
    line(1043,299,1200,299);
    ellipse(1117,365,80,80);
    ellipse(1117,365,60,60);
    rect(967,199,40,120);
  }
  void B6(){
    fill(#A2532A);
    stroke(0);
    strokeWeight(2);
    rect(1300,70,40,260);
    beginShape();
    vertex(1270,460);
    vertex(1290,239);
    vertex(1350,239);
    vertex(1370,460);
    endShape();
    beginShape();
    vertex(1200,671);
    vertex(1250,450);
    vertex(1390,450);
    vertex(1440,671);
    endShape();
    strokeWeight(1);
    line(1288,450, 1393,671);
    line(1268,450, 1373,671);
    ellipse(1267,629,40,40);
    line(1310,239,1310,450);
    line(1330,239,1330,450);
    line(1320,70,1320,239);
  }
  void B7(){
    fill(#B2761D);
    stroke(0);
    strokeWeight(2);
    quad(1440,671, 1540,520, 1680,520, 1680,671);
    strokeWeight(1);
    line(1470,671, 1552,550);
    line(1552,550, 1655,550);
    line(1655,550, 1655,671);
  }
//================================================================================================================================================================================================================================================
  
  void Truck(){
   
    fill(#F0C92C);
   stroke(0);
   strokeWeight(2);
    rect(-5,671, 1450,120);
    fill(90);
    rect(-5,685, 1450,120);
    fill(#CC5B10);
    rect(-5,750,1450,250);
    
    fill(30);
    rect(180,672,70,40);
    fill(#C30928);
    rect(514,606, 268,165);// truck base
    
    fill(#C30928);
    beginShape();// top base
    vertex(782,606);
    vertex(738,472);
    vertex(748,472);
    vertex(745,452);
    vertex(514,452);
    vertex(514,606);
    endShape();
    
    strokeWeight(3);
    line(588,452,588,771);
    
    fill(#919990);
    strokeWeight(2);
    beginShape();// bottom
    vertex(572,771);
    vertex(572,716);
    vertex(580,704);
    vertex(716,704);
    vertex(724,716);
    vertex(724,771);
    endShape(CLOSE);
    
    fill(#1A1A1A);
    beginShape();// bottom inside
    vertex(587,771);
    vertex(587,728);
    vertex(595,716);
    vertex(701,716);
    vertex(709,728);
    vertex(709,771);
    endShape();
    
    fill(#B7B7B7);
    rect(514,606,272,37);
    
    fill(#959595);
    rect(782,724,20,47);// car front bottom
    
    fill(#2550FF);
    beginShape();//left blue base 
    vertex(530,700);
    vertex(530,771);
    vertex(90,771);
    vertex(24,720);
    vertex(24,700);
    endShape(CLOSE);
    
    fill(#C30928);
    beginShape();// door
    vertex(747,594);
    vertex(747,530);
    vertex(727,470);
    vertex(654,470);
    vertex(654,594);
    endShape(CLOSE);
    
    fill(#A8ECEF);
    beginShape();// door window
    vertex(740,530);
    vertex(740,527);
    vertex(724,475);
    vertex(659,475);
    vertex(659,530);
    endShape(CLOSE);
    
    fill(60);
    ellipse(673,551,10,4);// door handle
    
    fill(#909090);
    beginShape();
    vertex(480,480);
    vertex(506,480);
    vertex(506,610);
    bezierVertex(506,615, 507,622, 514,620); 
    vertex(514,648);
    bezierVertex(514,648, 484,646, 480,610);
    endShape(CLOSE);
    
    quad(485,480, 485,420, 501,400, 501,480);
    
    fill(#A7A7A7);
    rect(430,726,96,42,3);
    rect(452,724,6,48,5);
    rect(502,724,6,48,5);
    
    strokeWeight(1);
    line(424,701,424,771);
    line(185,701,185,771);
    line(49,701,49,738);
    
    fill(0);
    strokeWeight(3);
    ellipse(648,780,100,100);// front wheel
    fill(#696969);
    ellipse(648,780,70,70);
    
    fill(0);
    ellipse(318,780,100,100);// middle wheel
    fill(#696969);
    ellipse(318,780,70,70);
    
    fill(0);
    ellipse(187,780,100,100);// left wheel
    fill(#696969);
    ellipse(187,780,70,70);
    
    fill(#3858FF);
    strokeWeight(1);
    beginShape();
    vertex(395,771);
    vertex(394,733);
    vertex(369,713);
    vertex(268,713);
    vertex(255,725);
    vertex(242,713);
    vertex(140,713);
    vertex(121,733);
    vertex(135,733);
    vertex(144,723);
    vertex(240,723);
    vertex(255,735);
    vertex(270,723);
    vertex(364,723);
    vertex(383,736);
    vertex(383,771);
    endShape(CLOSE);
   
    fill(#888888);
    stroke(0);
    strokeWeight(3);
    rect(-5,290,460,400);
    
    fill(#02A6EB);
    stroke(250);
    strokeWeight(1);
    rect(-5,397,422,220);
    
    stroke(250);
    line(-5,412,417,412);
    line(-5,602,417,602);
    fill(250);
    rect(-5,455,422,104);
    
    fill(50);
    stroke(0);
    strokeWeight(1);
    line(417,289,417,689);
    line(-5,328,454,328);
    noStroke();
    ellipse(436,350,10,10);
    ellipse(436,390,10,10);
    ellipse(436,430,10,10);
    ellipse(436,470,10,10);
    ellipse(436,510,10,10);
    ellipse(436,550,10,10);
    ellipse(436,590,10,10);
    ellipse(436,630,10,10);
    ellipse(436,670,10,10);
    
    ellipse(30,310,10,10);
    ellipse(70,310,10,10);
    ellipse(110,310,10,10);
    ellipse(150,310,10,10);
    ellipse(190,310,10,10);
    ellipse(230,310,10,10);
    ellipse(270,310,10,10);
    ellipse(310,310,10,10);
    ellipse(350,310,10,10);
    ellipse(390,310,10,10);
    
    fill(0,0,0,0);
    stroke(0);
    strokeWeight(3);
    rect(588,475,31,85,10);
    
    noFill();
    stroke(#341C00);
    strokeWeight(3);
    arc(648,780,82,82,radians(0+TruckMoving),radians(90+TruckMoving));
    arc(648,780,82,82,radians(180+TruckMoving),radians(270+TruckMoving));
    
    arc(318,780,82,82,radians(45+TruckMoving),radians(135+TruckMoving));
    arc(318,780,82,82,radians(225+TruckMoving),radians(315+TruckMoving));
    
    arc(187,780,82,82,radians(-45+TruckMoving),radians(45+TruckMoving));
    arc(187,780,82,82,radians(135+TruckMoving),radians(225+TruckMoving));
    
    noStroke();
    fill(250);
    quad(523,496, 530,550, 570,550, 577,496);
    image(AutobotSymbol,550,523,60,60);
    image(AutobotSymbol,106,505,100,100);
    imageMode(CENTER);
  }
//=========================================================================================================================================================================================

  void ArkMegatron(){
    fill(70);
    rect(195,469,10,10);
    
    fill(#FEA306);
    beginShape();
    vertex(199,464);
    vertex(300,464);
    vertex(312,455);
    vertex(324,455);
    vertex(330,464);
    vertex(400,473);
    vertex(393,481);
    vertex(332,484);
    vertex(199,484);
    endShape(CLOSE);
    
    fill(#5998CE);
    rect(200,467,80,14);
    
    fill(#F78242);
    rect(290,464,10,15);
    rect(300,473,70,4);
    
    stroke(#67BADC);
    strokeWeight(2);
    line(202,471, 277,471);
    line(202,476, 277,476);
    
    fill(#00FFFF);
    stroke(0);
    strokeWeight(1);
    quad(320,455, 320,459, 326,459, 324,455);
  }
  
  void MegatronBehind(){
    fill(#BA622C);
    stroke(0);
    strokeWeight(2);
    beginShape();
    vertex(655,220);
    vertex(887,277);
    vertex(887,760);
    vertex(655,760);
    endShape(CLOSE);
    
    fill(#7C2E00);
    rect(435,-5,220,755);
    
    line(470,-5,470,360);
    line(435,360,655,360);
    line(615,360,615,745);
    line(826,263,826,745);
    
    rect(452,405,100,3300);
    
    fill(#BB7E36);
    beginShape();
    vertex(0,576);
    vertex(331,576);
    vertex(500,745);
    vertex(0,745);
    endShape();
    fill(#C08A39);
    rect(475,490,240,20);
    rect(278,480,200,40,3);
    
    fill(#BB7E36);
    beginShape();
    vertex(30,576);
    bezierVertex(4,569, 2,550, 2,550);
    vertex(2,450);
    bezierVertex(2,450, 4,431, 30,424);
    vertex(211,424);
    vertex(282,440);
    vertex(282,560);
    vertex(211,576);
    endShape(CLOSE);
    
    
    
    
    fill(#9B4713);
    stroke(0);
    strokeWeight(2);
    rect(-5,745, 1445,200);
    
    fill(70);
    rect(917,805,100,180);
    
    fill(#C5C9CC);
    beginShape();
    vertex(950,900);
    vertex(806,772);
    bezierVertex(759,496, 952,492, 966,373);
    vertex(980,109);
    vertex(1287,14);
    vertex(1594,109);
    vertex(1450,900);
    endShape(CLOSE);
    
    bezier(846,535, 846,535,1287,780,1728,535);
    
    line(1287,14, 1287,900);
    
    beginShape();
    vertex(885,841);
    vertex(885,660);
    vertex(1156,900);
    endShape();
    
    beginShape();
    vertex(1689,841);
    vertex(1689,660);
    vertex(1418,900);
    endShape();
    
    strokeWeight(1);
    line(971,292, 1287,426);
    line(1603,292, 1287,426);
    
    line(980,745,980,900);
    line(1080,833,1080,900);
    
    fill(#C08A39);
    quad(30,424, 282,479, 282, 520, 30,576);
  
    line(30,576, 30,424);
    line(211,576, 211,424);
    
    fill(#F4BA0E);
    quad(-5,610, 318,610, 455,744, -5,744);
    line(151,611,151,745);
    fill(#A5571C);
    ellipse(584,86,60,60);
    
    line(0,770,400,770);
    line(300,820,800,820);
    line(35,792,130,792);
    line(100,855,600,855);
  }
//=============================================================================================================================================================================================================================================
  
  void Bumblebee(){
    fill(0xffF8DA00);
    beginShape();// bumblebee head base
    vertex(658,900);
    vertex(564,825);
    vertex(625,590);
    vertex(681,550);
    vertex(901,550);
    vertex(957,590);
    vertex(1018,825);
    vertex(924,900);
    endShape();
    
    beginShape();// left horn
    vertex(617,641); 
    bezierVertex(531,585, 524,491, 524,491);
    vertex(531,484);
    bezierVertex(594,570, 648,578, 648,578);
    vertex(648,578);
    bezierVertex(650,620, 617,641, 617,641);
    endShape();
    
    beginShape();// right horn
    vertex(965,641); 
    bezierVertex(1051,585, 1058,491, 1058,491);
    vertex(1051,484);
    bezierVertex(988,570, 934,578, 934,578);
    vertex(934,578);
    bezierVertex(932,620, 965,641, 965,641);
    endShape();
    
    fill(0,0,0,0);
    bezier(659,566, 659,566, 671,631, 606,663);
    bezier(923,566, 923,566, 911,631, 976,663);
    
    bezier(564,825, 564,825, 791,870, 1018,825);
    
    bezier(681,550, 745,646, 732,800, 732,842);
    bezier(901,550, 837,646, 850,800, 850,842);
    
    bezier(732,843, 721,867, 704,900, 658,900);
    bezier(850,843, 861,867, 878,900, 924,900);
    
    fill(0xffF4BA0E);
    beginShape();
    vertex(475,900);
    vertex(495,890);
    bezierVertex(495,890, 791,850, 1087,890);
    vertex(1107,900);
    endShape();
    
    fill(50);
    beginShape();
    vertex(575,900);
    bezierVertex(575,900, 791,870, 1007,900);
    endShape();
  }
//===========================================================================================================================================================================================================
  
  void UpArkPanel(){
    fill(0xffB94A0A);
    strokeWeight(2);
    beginShape();
    vertex(272,0);
    vertex(334,86);
    vertex(1106,86);
    vertex(1168,0);  
    endShape();
  }
  
  void LeftArkPanel(){
    
    fill(0xffB76210);
    strokeWeight(2);
    rect(124,262,64,380);
    
    fill(0xffE68326);
    ellipse(156,455,120,120);
    ellipse(156,455,60,60);
    
    fill(0xffE7781F);
    rect(64,-15,183,290,15);// left up 
    
    rect(-15,625,262,90,15);
  }
  
  void RightArkPanel(){  
    fill(0xffB76210);
    strokeWeight(2);
    rect(1252,262,64,380);
    
    fill(0xffE68326);
    ellipse(1284,455,120,120);
    ellipse(1284,455,60,60);
    
    fill(0xffE7781F);
    rect(1193,-15,183,290,15);// right up
    
    rect(1178,625,307,90,15); 
  }
  
  void BottomArkPanel(){
    fill(0xffAE5C12);
    stroke(0);
    strokeWeight(2);
    beginShape();// bottom control panel
    vertex(444,871);
    vertex(330,890);
    vertex(336,777);
    vertex(405,731);
    vertex(1035,731);
    vertex(1104,777);
    vertex(1110,890);
    vertex(996,871);
    endShape(CLOSE);
    
    fill(0xffB54A00);
    beginShape();// bottom control panel inside
    vertex(440,853);
    vertex(357,863);
    vertex(362,786);
    vertex(407,755);
    vertex(1033,755);
    vertex(1078,786);
    vertex(1083,863);
    vertex(1000,853);
    endShape(CLOSE);
    
    fill(0xffD67119);
    rect(10,735,140,155,4);// left bottom 1
    rect(170,735,140,155,4);// left bottom 2
    rect(1290,735,140,155,4);// right bottom 1
    rect(1130,735,140,155,4);// right bottom 2
    
    fill(0xff174A75);
    rect(20,745,55,35);// bottome left 1 rects inside
    fill(0xff696154);
    rect(85,745,55,35);
    
    rect(180,745,55,35);// bottome left 2 rects inside
    fill(0xff195F9A);
    rect(245,745,55,35);
    
    fill(0xff73BDE2);
    rect(1365,745,55,35);// bottome right 1 rects inside
    fill(0xff696154);
    rect(1300,745,55,35);
    
    fill(0xff407FB2);
    rect(1205,745,55,35);// bottome right 2 rects inside
    rect(1140,745,55,35);
    
    fill(0xff560E00);
    rect(20,790,120,8,1);// left bottom 1
    rect(20,820,120,8,1);
    rect(20,850,120,8,1);
    
    fill(0xffA23A13);
    rect(185,790,20,80);
    rect(230,790,20,80);
    rect(275,790,20,80);
    
    
    fill(0xffE7A63E);
    ellipse(1200,836,90,90);
    
    fill(0xff982307);
    triangle(1307,791, 1414,791, 1414,865);
    triangle(1304,806, 1411,880, 1304,880);
  }
//=========================================================================================================================================================================================================================================  

  
  void ArkBehind(){
   
   fill(0xffFFA600);
   stroke(0);
   strokeWeight(1);
   rect(795,545,10,10,2);// top rect
   
   beginShape();// right slanted top
   vertex(835,575);
   vertex(850,560);
   vertex(910,581);
   endShape(CLOSE);
   
   beginShape();// right slanted top
   vertex(765,575);
   vertex(750,560);
   vertex(690,581);
   endShape(CLOSE);
   
   beginShape();// right slanted bottom
   vertex(848,628);
   vertex(860,634);
   vertex(920,615);
   endShape(CLOSE);
   
   beginShape();// left slanted bottom
   vertex(752,628);
   vertex(740,634);
   vertex(680,615);
   endShape(CLOSE);
   
   beginShape();// left and irght top small pieces
   vertex(777,566);
   vertex(765,566);
   vertex(762,572);
   vertex(838,572);
   vertex(835,566);
   vertex(823,566);
   endShape(CLOSE);
   
   beginShape();// top
   vertex(777,580);
   vertex(777,562);
   vertex(785,552);
   vertex(815,552);
   vertex(823,562);
   vertex(823,580);
   endShape(CLOSE);
   
   ellipse(800,600,280,60);// Ark Base
   
   quad(715,590, 730,580, 870,580, 885,590);// middle detail


   beginShape();// middle rect
   vertex(670,595);
   vertex(690,585);
   vertex(910,585);
   vertex(930,595);
   vertex(930,605);
   vertex(910,615);
   vertex(690,615);
   vertex(670,605);
   endShape(CLOSE);
    
   fill(0xff60E0F0);
   stroke(0xff808080);
   strokeWeight(3);
   ellipse(705,600,24,24);// circle base
   ellipse(745,600,24,24);
   ellipse(780,600,24,24);
   ellipse(820,600,24,24);
   ellipse(855,600,24,24);   
   ellipse(895,600,24,24);// left to right
   
   fill(0xffFFA600);
   stroke(0);
   strokeWeight(1);
   beginShape();// bottom shape
   vertex(745,615);
   vertex(855,615);
   vertex(845,635);
   vertex(755,635);
   endShape(CLOSE);
   
   stroke(0xffA0F0F0);
   strokeWeight(2);
   line(694,600, 716,600);// left horizontal circle lines
   line(734,600, 756,600);
   line(769,600, 791,600);
   
   line(705,589, 705,611);// left vertical circle lines
   line(745,589, 745,611);
   line(780,589, 780,611);
   
   line(884,600, 906,600);// right vertical circle lines
   line(844,600, 866,600);
   line(809,600, 831,600);
   
   line(895,589, 895,611);// right vertical circel lines
   line(855,589, 855,611);
   line(820,589, 820,611);
   
   fill(0xff4090F0);
   stroke(0);
   strokeWeight(1);
   ellipse(705,600,12,12);// inner circle base
   ellipse(745,600,12,12);
   ellipse(780,600,12,12);
   ellipse(820,600,12,12);
   ellipse(855,600,12,12);   
   ellipse(895,600,12,12);// left to right
   
   fill(0xffFFA600);
   rect(775,622,50,13);// under bottom triangle
   
   fill(0xff293215);
   triangle(784,578, 816,578, 800,595);// top triangle
   triangle(784,622, 816,622, 800,605);// bottom triangle 
  
   
   line(784,578, 768,571);// top lines
   line(816,578, 832,571);
   
   line(775,625, 754,630);//bottom lines
   line(825,625, 846,630);
  
   
   line(785,552, 792,570);
   line(815,552, 808,570);
    
    
    
   image(bg,800,608,240,80);
  
   fill(0xff60E0F0,150);
   noStroke();
   ellipse(705,600,46,46);
   ellipse(745,600,48,48);
   ellipse(780,600,45,45);
   ellipse(820,600,49,49);
   ellipse(855,600,46,46);   
   ellipse(895,600,44,44);
   
   fill(250,150);
   noStroke();
   ellipse(705,600,36,36);
   ellipse(745,600,36,36);
   ellipse(780,600,36,36);
   ellipse(820,600,36,36);
   ellipse(855,600,36,36);   
   ellipse(895,600,36,36);
  
   image(EngineLight,705,600,67,40);
   image(EngineLight,745,600,70,38);
   image(EngineLight,780,600,69,41);
   image(EngineLight,820,600,70,40);
   image(EngineLight,855,600,72,42);
   image(EngineLight,895,600,67,40);
  }
//=========================================================================================================================================================================================  

  void ArkSide(){
    
  image(Blast,25,340,180,140);
  
  fill(0xffFFA600);
  rect(150, 330, 600, 150, 5);// laft main body

  beginShape();// top bridge left piece
  vertex(600, 330);
  bezierVertex(640, 325, 705, 320, 715, 320);
  vertex(710, 330);
  endShape();

  beginShape();// right main body
  vertex(750, 330);
  vertex(1380, 430);
  vertex(1372, 460);
  vertex(1340, 480);
  vertex(740, 480);
  endShape();

  beginShape();// lower ship body
  vertex(300, 480);
  vertex(450, 500);
  vertex(700, 504);
  bezierVertex(800, 485, 960, 480, 960, 480);
  endShape();

  beginShape();// top ship bridge
  vertex(680, 340);
  vertex(730, 300);
  bezierVertex(750, 298, 800, 310, 820, 320);
  vertex(841, 345);
  endShape();

  fill(0xff800000);
  beginShape();// ship bridge line
  vertex(654, 345);
  vertex(660, 340);
  vertex(680, 340);
  vertex(706, 320);
  vertex(820, 320);
  vertex(824, 325);
  vertex(710, 325);
  vertex(684, 345);
  endShape(CLOSE);

  fill(0xff00FFFF);
  beginShape();// blue window
  vertex(820, 320);
  vertex(790, 320);
  vertex(790, 310);
  bezierVertex(790, 310, 804, 313, 820, 320);
  endShape(CLOSE);

  fill(0xffFF8041);
  beginShape();// long right tip piece
  vertex(1100, 423);
  vertex(1200, 425);
  vertex(1220, 436);
  vertex(1360, 436);
  vertex(1356, 450);
  vertex(1240, 460);
  vertex(1000, 460);
  endShape(CLOSE);
  
  fill(0xffFFA600);
  beginShape();// long piece top curve
  vertex(650, 413);
  vertex(650, 375);
  bezierVertex(700, 375, 900, 350, 1100, 413);
  endShape(CLOSE);

  beginShape();// long piece bottom curve
  vertex(650, 457);
  vertex(650, 480);
  bezierVertex(700, 480, 960, 480, 1100, 457);
  endShape();

  ellipse(750, 375, 200, 60);// center ellipse

  fill(0xff808080);
  beginShape();// middle ellipse grey
  vertex(650, 375);
  bezierVertex(650, 375, 780, 390, 830, 357);
  vertex(830, 357);
  bezierVertex(830, 357, 850, 365, 850, 375);
  vertex(850, 375);
  bezierVertex(780, 408, 650, 380, 650, 375);
  endShape();

  fill(0xffFF8041);
  beginShape();// long piece
  vertex(700, 413);
  vertex(1100, 413);
  vertex(1150, 435);
  vertex(1100, 457);
  vertex(700, 457);
  endShape(CLOSE);

  fill(0xffFF8041);
  rect(620, 330, 30, 150);// Vertical rect

  rect(180, 365, 440, 105);// middle left long rect

  fill(0xff808080);
  rect(650, 410, 50, 50);// center rect
  fill(0xffC0C0C0);
  rect(655, 418, 40, 34);// center rect inside

  fill(0xffFF8041);
  beginShape();// rect shape near the engine
  vertex(160, 330);
  vertex(174, 375);
  vertex(174, 465);
  vertex(165, 480);
  vertex(175, 480);
  vertex(184, 465);
  vertex(184, 375);
  vertex(170, 330);
  endShape(CLOSE);

  fill(0xff0080FF);
  rect(184, 400, 240, 50);// blue rect base

  fill(0xff80FFFF);
  noStroke();
  rect(185, 408, 239, 3);// light blue lines top
  rect(185, 415, 239, 3);
  rect(185, 440, 239, 3);// light blue lines bottom
  rect(185, 431, 239, 3);
  
  if (BlueBeamEngine){
    image(BlueBeam,-100,320,280,180);
  }
 
  
  
  fill(0xff808080);
  stroke(2);
  rect(140, 350, 20, 120, 2);
  fill(100);
  rect(140, 350, 8, 120);
  fill(0xffC0C0C0);
  rect(130, 360, 10, 100);

  image(AutobotSymbol, 570, 400, 50, 50);// Autobot Symbol
  
  
  }

//=========================================================================================================================================================================================

void OptimusPrimeFront() {
  PImage Scratchh;
  PImage Light;
  PImage Blue;
  PImage bg;

  Scratchh = loadImage("Scratchh.png");
  Light = loadImage("Light.png");
  Blue = loadImage("Blue.png");
  bg = loadImage("bg.png");



  tint(250, 250);

  fill(0xffC7C7C7);
  stroke(0);
  strokeWeight(1);
  rect(100, 200, 200, 200);// left eye base
  fill(0xffB3B3B3);
  rect(300, 200, 200, 200);// right eye base

  fill(0xffB7B7B7);
  strokeWeight(3);
  beginShape();// right eye socket
  vertex(317, 330);
  vertex(407, 355);
  vertex(443, 324);
  vertex(440, 290);
  vertex(317, 290);
  endShape(CLOSE);

  fill(0xffC6C6C6);
  beginShape();// left eye socket
  vertex(283, 330);
  vertex(194, 355);
  vertex(157, 324);
  vertex(160, 290);
  vertex(283, 290);
  endShape(CLOSE);

  strokeWeight(1);
  line(410, 385, 408, 366);// right eye socket bottom line
  line(190, 385, 192, 363);// left eye sockety buttom line

  line(453, 350, 448, 330);// right eye socket right line
  line(147, 350, 154, 330);// left eye socket left line

  fill(0xff58CEFF);
  strokeWeight(2);
  beginShape();// right eye
  vertex(317, 324);
  vertex(402, 345);
  vertex(430, 321);
  vertex(426, 290);
  vertex(317, 290);
  endShape();
  image(Blue, 280, 220, 190, 190);
  image(bg, 305, 280, 150, 100);

  beginShape();// left eye
  vertex(283, 324);
  vertex(198, 345);
  vertex(170, 321);
  vertex(174, 290);
  vertex(283, 290);
  endShape();
  image(Blue, 130, 220, 190, 190);
  image(bg, 145, 280, 150, 100);

  fill(0xffD6D6D6);
  stroke(0);
  strokeWeight(2);
  beginShape();// bottom nose
  vertex(278, 350);
  bezierVertex(278, 350, 283, 330, 287, 330);
  vertex(300, 328);
  vertex(313, 330);
  bezierVertex(317, 330, 323, 350, 322, 350);
  endShape(CLOSE);

  strokeWeight(2);
  line(288, 334, 285, 350);// bottom nose left line
  line(312, 334, 315, 350);// bottome nose right line

  fill(0xff9F9F9F);
  strokeWeight(2);
  beginShape();// nose top part
  vertex(269, 300);
  bezierVertex(269, 300, 281, 330, 288, 334);
  vertex(300, 328);
  vertex(312, 334);
  bezierVertex(319, 330, 331, 300, 331, 300);
  endShape(CLOSE);

  line(280, 300, 288, 332);// nose top left line
  line(320, 300, 312, 332);// nose top right line

  fill(0);
  stroke(0);
  rect(140, 530, 320, 100);// neck base

  fill(0xff9E0D0A);
  stroke(0);
  strokeWeight(17 );
  rect(-192, 620, 984, 220, 2);// main body base

  strokeWeight(3);
  fill(0xffED1B24);
  rect(-185, 640, 480, 180, 4);// left chest base
  fill(0xffED1A23);
  rect(305, 640, 480, 180, 4);// right chest base

  fill(0xffEB1D20);
  strokeWeight(1);
  ellipse(14, 660, 18, 18);// left chest 3 circles
  ellipse(47, 660, 18, 18);
  ellipse(77, 660, 18, 18);

  ellipse(586, 660, 18, 18);// right chest 3 circles
  ellipse(553, 660, 18, 18);
  ellipse(523, 660, 18, 18);

  ellipse(-74, 660, 18, 18);// far left chest 3 circles
  ellipse(-107, 660, 18, 18);
  ellipse(-137, 660, 18, 18);

  ellipse(674, 660, 18, 18);// far right chest 3 circles
  ellipse(707, 660, 18, 18);
  ellipse(737, 660, 18, 18);

  ellipse(280, 785, 10, 10);// left lower chest circle
  ellipse(320, 785, 10, 10);// right lower chest circle  

  //image(Scratchh, -185, 643, 475, 180);// left chest texture
  //image(Scratchh, 308, 643, 475, 180);// right chest texture

  fill(0xffDCDCDC);
  strokeWeight(3);  
  beginShape();// left chest window outline
  vertex(-170, 680);
  vertex(200, 680);
  vertex(260, 720);
  vertex(260, 810);
  vertex(-170, 810);
  endShape(CLOSE);

  beginShape();// right chest window outline
  vertex(770, 680);
  vertex(400, 680);
  vertex(340, 720);
  vertex(340, 810);
  vertex(770, 810);
  endShape(CLOSE);

  fill(0xff00E1FD);
  strokeWeight(8);
  beginShape();// left chest window
  vertex(-150, 700);
  vertex(200, 700);
  vertex(244, 730);
  vertex(244, 810);
  vertex(-150, 810);
  endShape(CLOSE);


  beginShape();// right chest window
  vertex(750, 700);
  vertex(400, 700);
  vertex(356, 730);
  vertex(356, 810);
  vertex(750, 810);
  endShape(CLOSE);

  fill(250, 250, 250, 130);
  noStroke();
  quad(363, 734, 400, 705, 463, 810, 405, 810);// right window shining
  quad(505, 705, 563, 705, 600, 810, 555, 810);

  fill(250, 250, 250, 140);
  noStroke();
  quad(0, 730, 0, 730, 45, 810, 0, 810);// left window shining
  quad(70, 705, 145, 705, 195, 810, 120, 810);
  quad(200, 704, 220, 720, 240, 780, 240, 810);

  fill(0xffC92020);
  stroke(0);
  strokeWeight(5);
  quad(-170, 597, 98, 597, 103, 612, -175, 612);// left shoulder circle quad
  quad(770, 597, 502, 597, 497, 612, 775, 612);// right shoulder circle quad

  quad(120, 602, 170, 602, 175, 612, 120, 612);// neck left quad
  quad(480, 602, 430, 602, 425, 612, 480, 612);// neck right quad

  fill(0xffCFDB33);
  strokeWeight(8);
  ellipse(-17, 598, 70, 70);// left shoulder yellow circle
  ellipse(617, 598, 70, 70);// right shoulder yellow circle

  fill(0xffB0A500);
  strokeWeight(1);
  ellipse(-17, 598, 52, 52);// left shoulder yellow circle inside
  ellipse(617, 598, 52, 52);// right shoulder yellow circle inside

  fill(0xffFAFA00);
  strokeWeight(3);
  ellipse(-14, 598, 32, 32);// left shoulder small circle
  ellipse(614, 598, 32, 32);// right shoulder small circle

  fill(0xffCFDB33);
  strokeWeight(8);
  ellipse(-110, 598, 70, 70);// far left shoulder yellow circle
  ellipse(710, 598, 70, 70);// far right shoulder yellow circle

  fill(0xffB0A500);
  strokeWeight(1);
  ellipse(-110, 598, 52, 52);// far left shoulder yellow circle inside
  ellipse(710, 598, 52, 52);// far right shoulder yellow circle inside

  fill(0xffFAFA00);
  strokeWeight(3);
  ellipse(-108, 598, 32, 32);// far left shoulder small circle
  ellipse(708, 598, 32, 32);// far right shoulder small circle


  fill(0xffCFDB33);
  strokeWeight(2);
  arc(-14, 569, 8, 24, radians(190), radians(344), OPEN);// left shoulder top
  arc(614, 569, 8, 24, radians(196), radians(348), OPEN);// right shoulder top

  arc(-110, 569, 8, 24, radians(190), radians(344), OPEN);// far left shoulder top
  arc(710, 569, 8, 24, radians(196), radians(348), OPEN);// far right shoulder top

  strokeWeight(1);
  line(299, 620, 299, 800);// vertical middle cheast lines detail
  line(301, 620, 301, 800);

  line(-190, 631, 299, 631);// horizontal line middle chest
  line(790, 631, 301, 631);

  strokeWeight(2);
  line(9, 667, 19, 654);// left shoulder 3 circles lines
  line(42, 667, 52, 654);
  line(72, 667, 82, 654);

  line(581, 654, 591, 667);// right shoulder 3 circles lines
  line(548, 654, 558, 667);
  line(518, 654, 528, 667);

  line(669, 667, 679, 654);// far right shoulder 3 circles lines
  line(702, 667, 712, 654);
  line(732, 667, 742, 654);

  line(-142, 654, -132, 667);// far left shoulder 3 circles lines
  line(-112, 654, -102, 667);
  line(-79, 654, -69, 667);

  strokeWeight(1);
  line(277, 789, 283, 781);// smalle circles left chest line
  line(323, 789, 317, 781);// small circles right chest line

  strokeWeight(1);
  stroke(0xff760000);
  line(180, 610, 420, 610);// neck line 

  stroke(0xff525252);
  fill(0, 0, 0, 0);
  beginShape();// neck curve line
  curveVertex(160, 540);
  curveVertex(185, 595);
  curveVertex(415, 595);
  curveVertex(440, 540);
  endShape();

  beginShape();// chin line
  vertex(173, 560);
  vertex(245, 593);
  vertex(355, 593);
  vertex(427, 560);
  endShape();

  fill(0);
  stroke(0);
  strokeWeight(6);
  beginShape();// mouth piece base
  vertex(250, Mouth+248);
  vertex(173, Mouth+215);
  vertex(144, Mouth+10);
  vertex(190, Mouth+45);
  vertex(300, Mouth);
  vertex(410, Mouth+45);
  vertex(456, Mouth+10);
  vertex(427, Mouth+215);
  vertex(350, Mouth+248);
  endShape(CLOSE);

  fill(0xffD9D9D9);
  noStroke();
  beginShape();// left mouth piece
  vertex(250, MouthColour+144);
  vertex(173, MouthColour+111);
  vertex(162, MouthColour);
  vertex(190, MouthColour-50);
  vertex(297, MouthColour-95);
  vertex(301, MouthColour+130);
  endShape();

  fill(0xffAAAAAA);
  beginShape();// right mouth piece
  vertex(350, MouthColour+144);
  vertex(427, MouthColour+111);
  vertex(438, MouthColour);
  vertex(410, MouthColour-50);
  vertex(302, MouthColour-95);
  vertex(301, MouthColour+130);
  endShape();

  fill(0xffC0C0C0);
  triangle(144, MouthColour-86, 187, MouthColour-51, 167, MouthColour+30);// left mouse piece triangle left
  fill(0xffB6B6B6);
  triangle(456, MouthColour-86, 413, MouthColour-51, 433, MouthColour+30);// right mouse piece triangle right

  fill(0xff797979);
  triangle(256, 585, 300, 570, 345, 585);// bottom mouth piece

  fill(0);
  stroke(0);
  strokeWeight(6);
  beginShape();// head base piece
  vertex(240, 115);
  vertex(185, 125);
  vertex(130, 175);
  vertex(130, 270);
  vertex(470, 270);
  vertex(470, 175);
  vertex(415, 125);
  vertex(360, 115);
  endShape(CLOSE);

  fill(0xff024083);
  noStroke();
  beginShape();// head base right left 
  vertex(360, 119);
  vertex(415, 129);
  vertex(415, 145);
  vertex(413, 280);
  vertex(360, 280);
  endShape(CLOSE);
  fill(0xff03346E);
  noStroke();
  beginShape();// head base right right
  vertex(415, 129);
  vertex(415, 145);
  vertex(419, 260);
  vertex(465, 260);
  vertex(465, 179);
  endShape();

  fill(0xff1763AF);
  noStroke();
  beginShape();// head base right left 
  vertex(240, 119);
  vertex(185, 129);
  vertex(185, 145);
  vertex(187, 280);
  vertex(240, 280);
  endShape(CLOSE);
  fill(0xff1055A0);
  noStroke();
  beginShape();// head base left left
  vertex(185, 129);
  vertex(185, 145);
  vertex(181, 260);
  vertex(135, 260);
  vertex(135, 179);
  endShape();

  fill(0xff0D376A);
  stroke(0);
  strokeWeight(5);
  beginShape();// right ear circle
  vertex(490, 306);
  vertex(530, 306);
  bezierVertex(595, 310, 595, 500, 510, 495);
  endShape();

  fill(0xff00438A);
  beginShape();// left ear circle
  vertex(110, 306);
  vertex(70, 306);
  bezierVertex(5, 310, 5, 500, 90, 495);
  endShape();

  fill(0, 0, 0, 0);
  strokeWeight(2);
  bezier(540, 310, 514, 330, 524, 492, 529, 492);// right ear curve line
  bezier(60, 310, 86, 330, 76, 492, 71, 492);// left ear curve line

  fill(0xff05397A);
  strokeWeight(4);
  beginShape();// right ear tip
  vertex(490, 324);
  vertex(490, 40);
  vertex(510, 45);
  vertex(542, 280);
  vertex(524, 316);
  endShape();

  fill(0xff07509C);
  beginShape();// left ear tip
  vertex(110, 324);
  vertex(110, 40);
  vertex(90, 45);
  vertex(58, 280);
  vertex(76, 316);
  endShape();

  strokeWeight(2);
  line(495, 48, 495, 160);// right ear itp detail lines
  line(505, 50, 536, 280);
  line(535, 284, 518, 300);

  line(105, 48, 105, 160);// left ear itp detail lines
  line(95, 50, 64, 280);
  line(65, 284, 82, 300);

  fill(0xff00428C);
  stroke(0);
  strokeWeight(6);
  beginShape();// right head large piece
  vertex(456, 90);
  vertex(456, 350);
  vertex(423, 410);
  vertex(419, 600);
  vertex(455, 585);
  vertex(495, 550);

  curveVertex(400, 612);
  curveVertex(505, 550);
  curveVertex(500, 170);
  curveVertex(400, 108);
  endShape(CLOSE);

  fill(0xff0A5AA9);
  beginShape();// left head large piece
  vertex(144, 90);
  vertex(144, 350);
  vertex(177, 410);
  vertex(181, 600);
  vertex(145, 585);
  vertex(105, 550);

  curveVertex(200, 612);
  curveVertex(95, 550);
  curveVertex(100, 170);
  curveVertex(200, 108);
  endShape(CLOSE);

  fill(0, 0, 0, 0);
  strokeWeight(2);
  line(464, 118, 492, 170);// right head large detail lines
  bezier(494, 174, 506, 230, 508, 344, 506, 344);

  line(136, 118, 108, 170);// left head large detail lines
  bezier(106, 174, 95, 230, 92, 344, 94, 344);


  fill(0xff003470);
  stroke(0);
  strokeWeight(2);
  beginShape();// right ear connection shape with right head
  vertex(528, 403);
  vertex(512, 400);
  vertex(494, 430);
  vertex(492, 500);
  vertex(510, 490);
  vertex(540, 486);
  bezierVertex(526, 450, 528, 403, 528, 403);
  endShape();

  fill(0xff03549D);
  beginShape();// left ear connection shape with right head
  vertex(72, 403);
  vertex(88, 400);
  vertex(106, 430);
  vertex(108, 500);
  vertex(90, 490);
  vertex(60, 486);
  bezierVertex(74, 450, 72, 403, 72, 403);
  endShape();

  strokeWeight(1);
  line(528, 403, 510, 440);// right ear connection shape 3d outlines
  line(494, 430, 510, 440);
  line(510, 440, 510, 490);

  line(72, 403, 90, 440);// left ear connection shape 3d outlines
  line(106, 430, 90, 440);
  line(90, 440, 90, 490);

  fill(0xff014187);
  strokeWeight(5);
  beginShape();// front head piece
  vertex(400, 206);
  vertex(370, 206);
  vertex(230, 206);
  vertex(200, 206);
  bezierVertex(180, 206, 130, 236, 140, 296);// left side curce
  vertex(140, 296);
  vertex(460, 296);
  bezierVertex(470, 236, 420, 206, 400, 206);// right side curve
  endShape();

  beginShape();// front head lower curve
  curveVertex(100, 180);
  curveVertex(160, 293);
  curveVertex(430, 293);
  curveVertex(500, 170);
  endShape(OPEN);

  noStroke();
  rect(155, 283, 20, 11);// front head fill spaces
  rect(420, 283, 20, 11);

  fill(0xff092B58);
  stroke(0);
  strokeWeight(1.7f);
  quad(434, 422, 470, 420, 470, 540, 430, 580);// right head piece lower quad
  quad(166, 422, 130, 420, 130, 540, 170, 580);/// left head piece lower quad

  fill(0xff003170);
  strokeWeight(1);
  beginShape();// right head lower quad vertical line
  vertex(434, 422);
  vertex(437, 422);
  vertex(434, 568);
  vertex(430, 578);
  endShape(CLOSE);

  beginShape();// right head lower quad horitontal line
  vertex(430, 578);
  vertex(434, 568);
  vertex(469, 532);
  vertex(469, 539);
  endShape(CLOSE);

  beginShape();// left head lower quad vertical line
  vertex(165, 422);
  vertex(162, 422);
  vertex(165, 569);
  vertex(169, 579);
  endShape(CLOSE);

  beginShape();// left head lower quad horitontal line
  vertex(169, 578);
  vertex(166, 568);
  vertex(130, 532);
  vertex(130, 540);
  endShape(CLOSE);

  strokeWeight(1);
  line(495, 550, 481, 548);// right head lower small line
  line(105, 550, 119, 548);// left head lower small line

  strokeWeight(3);
  line(456, 350, 511, 352);// right head piece line
  line(144, 350, 89, 352);// left head piece line

  fill(0, 0, 0, 0);
  strokeWeight(2);
  beginShape();// right head quad outline
  vertex(419, 600);
  vertex(478, 546);
  vertex(478, 409);
  vertex(430, 411);
  endShape();

  beginShape();// left head quad outline
  vertex(181, 600);
  vertex(122, 546);
  vertex(122, 409);
  vertex(170, 411);
  endShape();

  strokeWeight(3);
  bezier(479, 408, 489, 400, 515, 357, 512, 343);// right head middle bezier line
  bezier(121, 408, 111, 400, 85, 357, 88, 343);// left head middle bezier line

  fill(0xff0255A5);
  stroke(0);
  strokeWeight(6);
  beginShape();// middle head top
  vertex(250, 30);
  vertex(226, 250);
  vertex(300, 285);
  vertex(374, 250);
  vertex(350, 30);

  curveVertex(400, 85);
  curveVertex(350, 30);
  curveVertex(250, 30);
  curveVertex(200, 85);
  endShape();

  fill(0xff9D9D9D);
  strokeWeight(3);// top head inside piece
  beginShape();
  vertex(268, 44);
  vertex(245, 240);
  vertex(300, 265);
  vertex(355, 240);
  vertex(332, 44);
  endShape(CLOSE);

  fill(0xffCACACA);
  strokeWeight(1);
  beginShape();// front head bottom V
  vertex(245, 238);
  vertex(300, 260);
  vertex(355, 238);
  vertex(355, 239);
  vertex(300, 264);
  vertex(245, 239);
  endShape(CLOSE);

  strokeWeight(2);
  quad(246, 238, 354, 238, 352, 218, 248, 218);// fron head bottom 1
  line(352, 222, 248, 222);
  line(350, 202, 250, 202);
  quad(250, 197, 350, 197, 348, 181, 252, 181);
  line(348, 185, 252, 185);
  quad(255, 160, 345, 160, 341, 128, 259, 128);
  line(255, 154, 345, 154);
  line(340, 135, 258, 135);
  quad(261, 107, 339, 107, 337, 93, 263, 93);
  quad(260, 114, 340, 114, 339, 107, 261, 107); 
  quad(263, 93, 337, 93, 336, 86, 264, 86); 
  quad(266, 72, 334, 72, 333, 65, 267, 65);// front head top 1
}
