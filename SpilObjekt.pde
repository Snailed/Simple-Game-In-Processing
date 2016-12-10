abstract class SpilObjekt {
  float x,y;
  SpilObjekt(float x, float y) {
   this.x = x;
   this.y = y;
  }
  float getX() {
   return x; 
  }
  float getY() {
   return y; 
  }
  abstract void tick();
  abstract void render();
  
  
}