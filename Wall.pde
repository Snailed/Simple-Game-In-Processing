class Wall extends SpilObjekt {
 Wall(float x, float y, float wallWidth, float wallHeight) {
  super(x,y,wallWidth,wallHeight,ID.Wall); 
 }
 void tick() {
   
 }
 void render() {
   rect(x,y,objectWidth,objectHeight);
 }
 void collide(SpilObjekt collision) {
   
 }
  
}