class Player {
  // variabler
  int x;
  int y;

  int w;
  int h;

  boolean isMovingLeft;
  boolean isMovingRight;
  boolean isMovingUp;
  boolean isMovingDown;
  
int speed;


  //constructor = en funktion der har samme navn som klassen og målet for konstruktøren er at give hver variabel i klassen en startværdi
  // justering af alle disse linje, laver jeg nogen parametre til  at repræsentere mine fire variabler
  // man skal sørge for at uanset hvad man kalder disse parametre så er de forskellige fra dine klassevariabler


  Player(int startingX, int startingY, int startingW, int startingH) {
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  

    isMovingLeft = false;
    isMovingRight = false;
    isMovingUp = false;
    isMovingDown = false;
    
    speed = 15;
  }

  //functions
  void render() {
    rect(x,y,w,h);
  }

  void move() {
    if (isMovingLeft == true) {
      x -= speed; //x = x - speed;
    }
    
   if (isMovingRight == true){
     x += speed; // x = x + speed
  }
}
}
