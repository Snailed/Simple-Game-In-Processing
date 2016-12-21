public static PImage karakterer; 
public static PImage backgroundtiles;
public static PImage knife;
class ImageLoader {
 
 ImageLoader() {
   karakterer = loadImage("characters.png");
   backgroundtiles = loadImage("dungeon_tiles.png");
   knife = loadImage("knife.png");
 }
  
}