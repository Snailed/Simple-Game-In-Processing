static ImageLoader imageLoader;
Handler handler = new Handler();
LevelHandler levelHandler = new LevelHandler(handler);
void setup() {
  size(700,700);
  imageLoader = new ImageLoader();
  
  
}

void draw() {
  background(0);
  //scale(1.5,1.5);
  
  levelHandler.tick();
  levelHandler.render();
  
}; 
   
 