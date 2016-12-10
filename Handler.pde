import java.util.*;
class Handler {
 LinkedList<SpilObjekt> entities = new LinkedList();
 LinkedList<SpilObjekt> collisionEntities = new LinkedList();
 void tick() {
   for(int i = 0; i < entities.size(); i++) {
     entities.get(i).tick();
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
   collisionEntities.add(input); 
  }
  void clearEntities() {
   entities.clear(); 
  }
  void clearCollisionEntities() {
   collisionEntities.clear(); 
  }
}