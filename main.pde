Spiller player1;
Handler handler = new Handler();
void setup() {
  size(700,700);
  player1 = new Spiller(10,10);
  handler.addEntity(player1);

}

void draw() {
  background(0);
  handler.tick();
  handler.render();
}