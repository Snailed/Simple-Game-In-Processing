class LevelHandler {
  Handler handler;
  LevelAbstract currentLevel;
  LevelHandler(Handler handler) {
      this.handler = handler;
      currentLevel = new Level1();
      currentLevel.start();
    
    
    
  }
  void tick() {
    handler.tick();
    currentLevel.tick();
  }
  void render() {
    handler.render();
  }
  void skiftLevel(LevelAbstract level) {
    level.start();
  }
  
  
  
}