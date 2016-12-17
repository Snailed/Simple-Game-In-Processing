import java.util.*;
class Handler {
 LinkedList<SpilObjekt> entities = new LinkedList();
 LinkedList<SpilObjekt> collisionEntities = new LinkedList();
 int updateticker;
 SpilObjekt spiller;
 float spillerXMidte;
 float spillerYMidte;
 void tick() {
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
               println("Bump med væg der har positionerne: ("+collisionEntities.get(i).getX()+","+collisionEntities.get(i).getX()+")");
               spiller.collide(collisionEntities.get(i));
            }
         }
        }
     }
      }
      
    }
    
    
    
 }
  void render() {
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
  void clearEntities() {
   entities.clear(); 
  }
  void clearCollisionEntities() {
   collisionEntities.clear(); 
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
  
}