class BackgroundTile extends SpilObjekt {
 PImage tile = new PImage();
 BackgroundTileType type;
 BackgroundTile(float x,float y,BackgroundTileType type) {
   super(x,y,80,80,ID.BACKGROUNDTILE);
   this.type = type;
 }
  void tick() {
    switch (type) {
     case BIGSQUARE:
       tile = backgroundtiles.get(32,32,81,93);
     break;
     case BIGFLATSQUARE:
       tile = backgroundtiles.get(32,32,80,80);
     break;
     case LITTLEWALKWAY:
       tile = backgroundtiles.get(32,128,32,28);
     break;
     case TINYWALKWAY:
       tile = backgroundtiles.get(68,128,16,28);
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
}