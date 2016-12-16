class Wall extends SpilObjekt {
 WallStates state;
 Wall(float x, float y, float wallWidth, float wallHeight, WallStates state) {
  super(x,y,wallWidth,wallHeight,ID.WALL); 
  this.state = state;
 }
 void tick() {
   
 }
 void render() {
   if (state == WallStates.SOLID) {
   rect(x,y,objectWidth,objectHeight);
   }
   
 }
 void collide(SpilObjekt collision) {
   
 }
  
}