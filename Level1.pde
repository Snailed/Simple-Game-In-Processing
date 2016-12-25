class Level1 extends LevelAbstract{
  Spiller player1;
 Level1() {
   
 }
 void start() {
   player1 = new Spiller(40,40);
   
   handler.addTile(new BackgroundTile(170,90,BackgroundTileType.LITTLEWALKWAY,3));
   handler.addTile(new BackgroundTile(30,30,BackgroundTileType.BIGSQUARE,2));
      handler.addTile(new BackgroundTile(270,-60,BackgroundTileType.TALL_FLOATING_BIG_PLATFORM,2));

      handler.addTile(new BackgroundTile(250,30,BackgroundTileType.BIGSQUARE,2));

      handler.addTile(new BackgroundTile(290,0,BackgroundTileType.BROAD_STAIRS,2));

   
   handler.addCollisionEntity(player1); 

   
   

 }
 void stop() {
   handler.clearEntities();
   handler.clearCollisionEntities();
   
 }
 void tick() {
   
 }
 
  
}