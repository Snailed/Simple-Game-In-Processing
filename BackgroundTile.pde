class BackgroundTile extends SpilObjekt {
 int tileWidth;
 int tileHeight;
 float scale;
 PImage tile = new PImage();
 BackgroundTileType type;
 BackgroundTile(float x,float y,BackgroundTileType type, float scale) {
   super(x,y,80,80,ID.BACKGROUNDTILE);
   this.type = type;
   this.scale = scale;
    
 }
  void tick() {
    switch (type) {
     case BIGSQUARE:
       tile = backgroundtiles.get(32,32,80,93);
       tileWidth = 80*(int)scale;
       tileHeight = 80*(int)scale;
       
     break;
     case BIGFLATSQUARE:
       tile = backgroundtiles.get(32,32,80,80);
       tileWidth = 80*(int)scale;
       tileHeight = 80*(int)scale;
     break;
     case LITTLEWALKWAY:
       tile = backgroundtiles.get(32,128,32,28);
       tileWidth = 32*(int)scale;
       tileHeight = 20*(int)scale;
     break;
     case TINYWALKWAY:
       tile = backgroundtiles.get(68,128,16,28);
       tileWidth = 16*(int)scale;
       tileHeight = 20*(int)scale;
      break;
      case LITTLEWALKWAY_ENDLESS:
      tile = backgroundtiles.get(38,128,20,28);
       tileWidth = 20*(int)scale;
       tileHeight = 20*(int)scale;
      break;
    }
  }
  void render() {
    pushMatrix();
      scale(scale,scale);
    image(tile,x/scale,y/scale);
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