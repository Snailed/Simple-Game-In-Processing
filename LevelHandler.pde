class LevelHandler {
  Handler handler;
  Level1 level1 = new Level1();
  LevelHandler(Handler handler) {
      this.handler = handler;
      level1.start();
    
    
    
  }
  void tick() {
    handler.tick();
  }
  void render() {
    handler.render();
  }
  void skiftLevel(LevelAbstract level) {
    level.start();
  }
  
  
  
}