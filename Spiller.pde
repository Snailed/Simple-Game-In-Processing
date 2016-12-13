class Spiller extends SpilObjekt{
 PImage karakterer = loadImage("characters.png");
 double xspeed = 0;
 double yspeed = 0;
 int animationCounter = 1;
 int tickCounter = 0;
 String characterMode = "Standing";
 
 Spiller(float x, float y) {
   super(x,y);
 }
 void tick() {
   if (keyPressed) {
     //println("Klikket en knap");
    switch (keyCode) {
      case (UP):
      yspeed-=0.3;
      break;
      case (LEFT):
      xspeed-=0.3;
      break;
      case (RIGHT):
      characterMode = "Running";
      xspeed+=0.3;
      break;
      case(DOWN):
      yspeed+=0.3;
      break;
    }
   } else {
    xspeed *= 0.85;
    yspeed *= 0.85;
    if (xspeed <= 0.1 && xspeed >= -0.1 && yspeed <= 0.1 && yspeed >= -0.1) {
      characterMode = "Standing";
    }
   }
   if (xspeed > 5) xspeed = 5;
   if (yspeed > 5) yspeed = 5;
   if (xspeed < -5) xspeed = -5;
   if (yspeed < -5) yspeed = -5;
   x += xspeed;
   y += yspeed;
   //println("xspeed="+xspeed+", yspeed="+yspeed);
 }
 void render() {
   copy(karakterer,32*animationCounter,64,32,32,(int)x,(int)y,96,96);
   
   
   if (characterMode == "Running") {
   tickCounter++;
   if (tickCounter == 10) {
    animationCounter++; 
    println("Tick! AnimationCounter: "+animationCounter);
    tickCounter = 0;
   }
   if (animationCounter >= 4 ) {
    animationCounter = 0; 
   }
   }
 }
}