Spiller player1;
Wall wall1;
Handler handler = new Handler();
void setup() {
  size(700,700);
  player1 = new Spiller(10,10);
  handler.addEntity(player1);
  wall1 = new Wall(200,10,10,100);
  handler.addEntity(wall1);
  handler.addCollisionEntity(wall1);
  handler.addCollisionEntity(player1);

}

void draw() {
  background(0);
  handler.tick();
  handler.render();
}