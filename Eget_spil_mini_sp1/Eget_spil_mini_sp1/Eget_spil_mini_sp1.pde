
Player p1;
float score = 0;
ArrayList<Virus> viruses;  // Declaring the ArrayList

void setup() {
  size(1200, 800);

  // I initialize my vars
  p1 = new Player(width/2, height/2, 50, 50);

  // Initialize the viruses ArrayList
  viruses = new ArrayList<Virus>();
}

void draw() {
  background(136, 210, 235);
    

  //The score 
  fill(0);
  textSize(25);
  text("Score: " + int(score), 15,25);
  score += 1;
  
  p1.render();
  p1.move();

  // Every time a new virus pops up, 
  //the framecount is on 60
  if (frameCount % 60 == 0) {
    viruses.add(new Virus(int(random(width)), int(random(20, 50))));
  }

    
  // I render the viruses here, and automatically updates them 
  for (int i = viruses.size() - 1; i >= 0; i--) {
    Virus v = viruses.get(i);
    v.render();
    v.fall();


  
  }
}
void keyPressed() {
  
  if (key == 'a') {
    p1.isMovingLeft = true;
  }
  if (key == 'd') {
    p1.isMovingRight = true;
  }
  
  if(key == 'w'){
    p1.isMovingUp = true;
  }
  
  if (key == 's'){
    p1.isMovingDown = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }
  if (key == 'd') {
    p1.isMovingRight = false;
  }
  
  if (key == 'w'){
    p1.isMovingUp = false;
  }
  
  if(key == 's'){
    p1.isMovingDown = false; 
  }
}
