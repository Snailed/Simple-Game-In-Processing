abstract class SpilObjekt {
  float x,y,objectWidth,objectHeight;
  ID id;
  SpilObjekt(float x, float y,float objectWidth, float objectHeight, ID id) {
   this.x = x;
   this.y = y;
   this.objectWidth = objectWidth;
   this.objectHeight = objectHeight;
   this.id = id;
  }
  float getX() {
   return x; 
  }
  float getY() {
   return y; 
  }
  ID getID() {
   return id; 
  }
  float getWidth() {
   return objectWidth; 
  }
  float getHeight() {
   return objectHeight; 
  }
  abstract void tick();
  abstract void render();
  abstract void collide(SpilObjekt collision);
  
  
}