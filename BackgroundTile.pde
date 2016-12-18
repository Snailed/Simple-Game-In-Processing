class BackgroundTile extends SpilObjekt {
 int tileWidth;
 int tileHeight;
 PImage tile = new PImage();
 BackgroundTileType type;
 BackgroundTile(float x,float y,BackgroundTileType type) {
   super(x,y,80,80,ID.BACKGROUNDTILE);
   this.type = type;
   
    
 }
  void tick() {
    switch (type) {
     case BIGSQUARE:
       tile = backgroundtiles.get(32,32,80,93);
       tileWidth = 80*2;
       tileHeight = 80*2;
     break;
     case BIGFLATSQUARE:
       tile = backgroundtiles.get(32,32,80,80);
       tileWidth = 80*2;
       tileHeight = 80*2;
     break;
     case LITTLEWALKWAY:
       tile = backgroundtiles.get(32,128,32,28);
       tileWidth = 32*2;
       tileHeight = 20*2;
     break;
     case TINYWALKWAY:
       tile = backgroundtiles.get(68,128,16,28);
       tileWidth = 16*2;
       tileHeight = 20*2;
      break;
    }
  }
  void render() {
    pushMatrix();
      scale(2,2);
    image(tile,x/2,y/2);
    popMatrix();
    
  }
  void collide(SpilObjekt collison) {
    
  }
  int getTileWidth() {
    //println("TileWidth: "+tileWidth);
   return tileWidth; 
   
  }
  int getTileHeight() {
    //println("TileHeight: "+tileHeight);
   return tileHeight; 
  }
}