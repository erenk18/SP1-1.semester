class Virus {
  ArrayList<Virus> Viruses = new ArrayList<Virus>();
  int x, y, size, speed;

  Virus(int startX, int startSize) {
    x = startX;
    y = 0;
    size = startSize;
    speed = int (random(3, 8));
  }

  void render() {
    fill(255, 0, 0);
    ellipse(x, y, size, size);
  }

  void fall() {
    y += speed;
  }

  boolean offScrean() {
    return y > height;
  }
}








 


 
  
