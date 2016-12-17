static ImageLoader imageLoader;
Handler handler = new Handler();
LevelHandler levelHandler = new LevelHandler(handler);
void setup() {
  size(700,700);
  imageLoader = new ImageLoader();
  
  
}

void draw() {
  background(0);
  levelHandler.tick();
  levelHandler.render();
  
}