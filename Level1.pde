class Level1 extends LevelAbstract{
  Spiller player1;
  Wall wall1;
 Level1() {
   
 }
 void start() {
   player1 = new Spiller(10,10);
   wall1 = new Wall(200,10,10,100,WallStates.SOLID);
   handler.addEntity(new BackgroundTile(30,30,BackgroundTileType.BIGSQUARE));
   handler.addCollisionEntity(wall1);
   handler.addCollisionEntity(player1); 
   
   
   
   handler.addCollisionEntity(new Wall(0,0,10,700,WallStates.SOLID));
   handler.addCollisionEntity(new Wall(0,0,700,10,WallStates.SOLID));
   handler.addCollisionEntity(new Wall(690,0,10,700,WallStates.SOLID));
   handler.addCollisionEntity(new Wall(0,690,700,10,WallStates.SOLID));
   
   
   handler.addCollisionEntity(new Wall(350,350,100,100,WallStates.SOLID));
 }
 void stop() {
   handler.clearEntities();
   handler.clearCollisionEntities();
   
 }
 void tick() {
   
 }
 
  
}