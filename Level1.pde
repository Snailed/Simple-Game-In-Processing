class Level1 extends LevelAbstract{
  Spiller player1;
  Wall wall1;
 Level1() {
   
 }
 void start() {
   handler.addCollisionEntity(new Wall(-10,0,10,700,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(0,-10,700,10,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(700,0,10,700,WallStates.INVISIBLE));
   handler.addCollisionEntity(new Wall(0,-700,700,10,WallStates.INVISIBLE));
   player1 = new Spiller(10,10);
   handler.addEntity(player1);
   wall1 = new Wall(200,10,10,100,WallStates.SOLID);
   handler.addEntity(wall1);
   handler.addCollisionEntity(wall1);
   handler.addCollisionEntity(player1);
 }
 void stop() {
   
 }
 
  
}