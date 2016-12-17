class Level2 extends LevelAbstract {
 Level2() {
   
   
 }
 void start() {
   handler.addEntity(new Spiller(10,10));
   handler.addCollisionEntity(new Wall(-10,0,10,700,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(0,-10,700,10,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(700,0,10,700,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(0,-700,700,10,WallStates.INVISIBLE));
 }
  void stop() {
   handler.clearEntities();
   handler.clearCollisionEntities();
  }
  void tick() {
    
  }
  
  
}