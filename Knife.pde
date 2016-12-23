class Knife extends SpilObjekt{
PVector pos;
PVector vel;
PVector standard;
float vinkel;
 Knife(float x, float y) {
  super(x,y,16,16,ID.KNIFE); 
  pos = new PVector(x+30,y+35);
  vel = new PVector(mouseX+camX,mouseY+camY);
  standard = new PVector(0,1);
  vel.sub(pos);
  vel.setMag(5);
  vinkel = PVector.angleBetween(standard,vel);
  println("Roterer med: "+vinkel);

 }
 
 void tick() {
  pos.add(vel);
   
   
   
 }
 void render() {
   //println("Roter med" + angle+ "radianer");
   pushMatrix();
   translate(pos.x,pos.y);
   if (vel.x > 0) {
   rotate(PI-vinkel);
   } else {
   rotate(PI+vinkel);
   }
   //translate(width,height);
   rotate(radians(45));
      image(knife,0,0);   
   popMatrix();
 }
 void collide(SpilObjekt collision) {
   
   
 }
 float getX() {
   return pos.x;
 }
 float getY() {
   return pos.y;
 }
}