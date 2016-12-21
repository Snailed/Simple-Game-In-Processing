class Knife extends SpilObjekt{
PVector pos;
PVector vel;
 Knife(float x, float y) {
  super(x,y,16,16,ID.KNIFE); 
  pos = new PVector(x+30,y+35);
  vel = new PVector(mouseX+camX,mouseY+camY);
  vel.sub(pos);
  vel.setMag(5);
 
 }
 
 void tick() {
  pos.add(vel);
   
   
   
 }
 void render() {
   
   //println("Roter med" + angle+ "radianer");
   pushMatrix();
   image(knife,pos.x,pos.y);

   rotate(radians(45));
      translate(-knife.width*2,-knife.height*2);

   popMatrix();
   //rect(pos.x,pos.y,10,10);
 }
 void collide(SpilObjekt collision) {
   
   
 }
  
}