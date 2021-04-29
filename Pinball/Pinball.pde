Coin[] coins = new Coin[10];
Ball ball;
PVector startDrag;

public void setup() {
  size(600, 600);
  spawnCoins();
}

public void draw() {
  background(50);
  fill(0x9E);
  rect(25, 25, 550, 550);

  if (ball != null) {
    ball.draw();
    ball.move();
  }

  for (Coin coin : coins) {
    if (coin.active && ball != null) {
      ball.ballVsCoin(coin);
      coin.draw();
    }
  }
}

public void mousePressed() {
  startDrag = new PVector(mouseX, mouseY);
}

public void mouseReleased() {
  PVector endDrag = new PVector(mouseX, mouseY);
  ball = new Ball(mouseX, mouseY, startDrag.sub(endDrag).mult(0.2));
}

private void spawnCoins() {
  for (int i = 0; i < coins.length; i++) {
    coins[i] = new Coin();
  }
}
