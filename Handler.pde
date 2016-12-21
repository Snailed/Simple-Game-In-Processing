import java.util.*;
 static float camX;
 static float camY;
class Handler {
 LinkedList<SpilObjekt> entities = new LinkedList();
 LinkedList<SpilObjekt> collisionEntities = new LinkedList();
 LinkedList<BackgroundTile> tiles = new LinkedList();
 int updateticker;
 SpilObjekt spiller;
 float spillerXMidte;
 float spillerYMidte;
 float xOffset = 0;
 float yOffset = 0;

 
 void tick() {
   for(int i = 0; i < tiles.size(); i++) {
     tiles.get(i).tick();
    }
   for(int i = 0; i < entities.size(); i++) {
     entities.get(i).tick();
    }
    
    
    for(int i = 0; i < collisionEntities.size(); i++) {
     if (collisionEntities.get(i).getID() == ID.PLAYER) { //TODO: Lav en testvæg
       spiller = collisionEntities.get(i);
       spillerXMidte = spiller.getX()+spiller.getWidth()/2;
       spillerYMidte = spiller.getY()+spiller.getHeight()/2;
       if (updateticker++ == 500) {
       //println("Spiller-X="+spiller.getX()+"  Spiller-Y="+spiller.getY()+"  Spiller-Width="+spiller.getWidth()+"  Spiller-Height="+spiller.getHeight());
       updateticker = 0;
     }
       break;
     }
    }
    
    for (int i = 0; i < collisionEntities.size();i++) {
      if (collisionEntities.get(i).getID() != ID.PLAYER) {
      
     if (spiller.getX()+spiller.getWidth()>collisionEntities.get(i).getX()) {
        if (spiller.getX() < collisionEntities.get(i).getX()+collisionEntities.get(i).getWidth()) {
         if (spiller.getY()+spiller.getHeight()>collisionEntities.get(i).getY()) {
            if (spiller.getY() < collisionEntities.get(i).getY()+collisionEntities.get(i).getHeight()) {
               //println("Bump med væg der har positionerne: ("+collisionEntities.get(i).getX()+","+collisionEntities.get(i).getX()+")");
               spiller.collide(collisionEntities.get(i));
            }
         }
        }
     }
      }
      
    }
    
    for (int i = 0; i < collisionEntities.size();i++) {
      
      if (collisionEntities.get(i).getID() == ID.PLAYER) {
        SpilObjekt temp = collisionEntities.get(i);
        scrollCamera(temp);
      }
    }
    
 }
  void render() {
    translate(-camX,-camY);
    for(int i = 0; i < tiles.size(); i++) {
     tiles.get(i).render();
     } 
   for(int i = 0; i < entities.size(); i++) {
     entities.get(i).render();
     } 
   
  }
  void addEntity(SpilObjekt input) {
   entities.add(input); 
  }
  void addCollisionEntity(SpilObjekt input) {
    entities.add(input);
   collisionEntities.add(input); 
  }
  void addTile(BackgroundTile tile) {
   tiles.add(tile); 
  }
  void clearEntities() {
   entities.clear(); 
  }
  void clearCollisionEntities() {
   collisionEntities.clear(); 
  }
  void clearTiles() {
   tiles.clear(); 
  }
  SpilObjekt getObjectAtPosition(int x, int y) {
    for (int i = 0; i < collisionEntities.size();i++) {
      if (collisionEntities.get(i).getID() != ID.PLAYER) {
      
     if (x>collisionEntities.get(i).getX() && x < collisionEntities.get(i).getX()+collisionEntities.get(i).getWidth()) {
         if (y>collisionEntities.get(i).getY() && y < collisionEntities.get(i).getY()+collisionEntities.get(i).getHeight()) {
            return collisionEntities.get(i);
         }
        
     }
     
     
      }
      
      
    } return null;
  }
 BackgroundTile getTileAtPosition(int x, int y) {
  for (int i = 0; i < tiles.size(); i++) {
    if (x > tiles.get(i).getX() && x < tiles.get(i).getX() + tiles.get(i).getTileWidth()) {
      if (y > tiles.get(i).getY() && y < tiles.get(i).getY() + tiles.get(i).getTileHeight()) {
        //println("Y-koordinaten "+y+" er større end "+tiles.get(i).getY()+" og mindre end "+(tiles.get(i).getY() + tiles.get(i).getTileHeight())); 
        return tiles.get(i);
        
      } else {
       //println("Y-koordinaten "+y+" er større end "+tiles.get(i).getY()+" og mindre end "+(tiles.get(i).getY() + tiles.get(i).getTileHeight()));  
      }
    } else {
     //println("X-koordinaten "+x+" er større end "+tiles.get(i).getX()+" og mindre end "+(tiles.get(i).getX() + tiles.get(i).getTileWidth())); 
    }
  }
  return null;
   
   
 }
 
 void scrollCamera(SpilObjekt spiller) {
    long offsetMaxX = 10000 - 466;
    long offsetMaxY = 10000 - 466;
    long offsetMinX = -10000;
    long offsetMinY = -10000;
   
   camX = spiller.getX() - 700 / 2;
   camY = spiller.getY() - 700 / 2;
   
   if (camX > offsetMaxX) {
    camX = offsetMaxX;
   }
else if (camX < offsetMinX) { 
    camX = offsetMinX;
    } 
    if (camY > offsetMaxY) {
    camY = offsetMaxY;
   }
else if (camY < offsetMinY) { 
    camY = offsetMinY;
    } 
    camX += spiller.getWidth()/2;
    camY += spiller.getHeight()/2;
 }
 
 
   
 
 
}