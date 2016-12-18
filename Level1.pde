class Level1 extends LevelAbstract{
  Spiller player1;
 Level1() {
   
 }
 void start() {
   player1 = new Spiller(40,40);
   
   handler.addTile(new BackgroundTile(162,90,BackgroundTileType.LITTLEWALKWAY));
   handler.addTile(new BackgroundTile(226,90,BackgroundTileType.LITTLEWALKWAY));
   handler.addTile(new BackgroundTile(30,30,BackgroundTileType.BIGSQUARE));
   
   handler.addTile(new BackgroundTile(250,30,BackgroundTileType.BIGSQUARE));
   handler.addCollisionEntity(player1);   
   println("Tilen på koordinaterne (31,31) er: "+handler.getTileAtPosition(31,31));
   println("Tilen på koordinaterne (162,31) er: "+handler.getTileAtPosition(150,31));
   println("Tilen på koordinaterne (31,300) er: "+handler.getTileAtPosition(31,300));
 }
 void stop() {
   handler.clearEntities();
   handler.clearCollisionEntities();
   
 }
 void tick() {
   
 }
 
  
}