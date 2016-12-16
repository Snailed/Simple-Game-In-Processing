class LevelHandler {
  Handler handler;
  Spiller player1;
  Wall wall1;
  LevelHandler(Handler handler) {
      this.handler = handler;
      player1 = new Spiller(10,10);
      handler.addEntity(player1);
      wall1 = new Wall(200,10,10,100,WallStates.SOLID);
      handler.addEntity(wall1);
      handler.addCollisionEntity(wall1);
      handler.addCollisionEntity(player1);
    
    
    
  }
  void tick() {
    handler.tick();
  }
  void render() {
    handler.render();
  }
  
  
  
  
}