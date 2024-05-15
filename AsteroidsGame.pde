Star[] starry = new Star[5000];
Spaceship fly = new Spaceship();
public void setup() {
  size(500, 500);
  for (int i =0; i < starry.length; i++) {
    starry[i] = new Star();
  }
}
public void draw() {
  background(1);
  for (int i =0; i<starry.length; i++) {
    starry[i].show();
  }
  fly.show();
  fly.move();
}
public void keyPressed() {
  if (keyCode == UP) {
    fly.accelerate(7);
  } else if (keyCode == RIGHT) {
    fly.turn(10);
  } else if (keyCode == LEFT) {
    fly.turn(-10);
  } else if (keyCode == DOWN) {
    fly.turn(Math.random()*360);
    fly.myCenterX = (Math.random()*width);
    fly.myCenterY = (Math.random()*height);
    fly.myXspeed = 0;
    fly.myYspeed = 0;
  }
}
