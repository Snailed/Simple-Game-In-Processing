class Level1 extends LevelAbstract{
  Spiller player1;
 Level1() {
   
 }
 void start() {
   player1 = new Spiller(40,40);
   
   handler.addTile(new BackgroundTile(170,90,BackgroundTileType.LITTLEWALKWAY,3));
   handler.addTile(new BackgroundTile(340,90,BackgroundTileType.LITTLEWALKWAY_ENDLESS,3));
   handler.addTile(new BackgroundTile(30,30,BackgroundTileType.BIGSQUARE,2));
   
   handler.addTile(new BackgroundTile(250,30,BackgroundTileType.BIGSQUARE,2));
   handler.addCollisionEntity(player1); 

   
   

 }
 void stop() {
   handler.clearEntities();
   handler.clearCollisionEntities();
   
 }
 void tick() {
   
 }
 
  
}