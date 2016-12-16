class Spiller extends SpilObjekt{
 PImage sprite = new PImage();
 double xspeed = 0;
 double yspeed = 0;
 int animationCounter = 1;
 int tickCounter = 0;
 String characterMode = "Standing";
 boolean goesLeft = false; // om han peger mod venstre eller ej.
 int spillerWidth = 96; //Husk at ændre i super()
 int spillerHeight = 96;
 Spiller(float x, float y) {
   super(x,y,55,64,ID.PLAYER); //LIGE HER!
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
      goesLeft = true;
      break;
      case (RIGHT):
      goesLeft = false;
      xspeed+=0.3;
      break;
      case(DOWN):
      yspeed+=0.3;
      break;
    }
    characterMode = "Running";
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
   pushMatrix();
   if (goesLeft) {
     scale(-1,1);
     sprite = karakterer.get(32*animationCounter,64,32,32);
     image(sprite,(-x-spillerWidth)+20,y-32,spillerWidth,spillerHeight); 
   } else {
     sprite = karakterer.get(32*animationCounter,64,32,32);
     image(sprite,x-20,y-32,spillerWidth,spillerHeight); 
   }
   
   popMatrix();
   if (characterMode == "Running") {
   tickCounter++;
   if (tickCounter == 10) {
    animationCounter++; 
    //println("Tick! AnimationCounter: "+animationCounter);
    tickCounter = 0;
   }
   if (animationCounter >= 4 ) {
    animationCounter = 0; 
   }
   }
   //fill(255,255,255,100);
   //rect(x,y,objectWidth,objectHeight);
 }
 void collide(SpilObjekt collision) {
  if (collision.getID() == ID.WALL) {
    //xspeed*=-1;
    //yspeed*=-1;
    if (x+objectWidth>collision.getX() && x + objectWidth < collision.getX()+collision.getWidth()/2) {
        x = collision.getX()-objectWidth;
        xspeed = 0;
        println("Bump-Venstre");
    }
    else if (x<collision.getX()+collision.getWidth() && x>collision.getX()+collision.getWidth()/2) {
        x = collision.getX()+collision.getWidth();
        xspeed = 0;
        println("Bump-Højre");
    }
    
    else if (y+objectHeight>collision.getY() && y + objectHeight < collision.getY()+collision.getHeight()/2) {
        y = collision.getY()-objectHeight;
        yspeed = 0;
        println("Bump-Bund");
    }
    else if (y<collision.getY()+collision.getHeight() && y>collision.getY()+collision.getHeight()/2) {
        y = collision.getY()+collision.getHeight();
        yspeed = 0;
        println("Bump-Top");
    }
    
    
    
  }
 }
 
 
}