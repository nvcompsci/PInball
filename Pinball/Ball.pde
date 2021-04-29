public class Ball extends Thing {
  public PVector vel;
  
  public Ball(int x, int y, PVector v0) {
    //call constructor of super, super up
    super(x,y,#050505);
    vel = v0;
  }
  
  private void collideWorldBounds() {
   if (y < 25 || y > height - 25) {
     vel.y *= -1;
   }
   if (x < 25 || x > width -25) {
    vel.x *= -1; 
   }
  }
  
  public void ballVsCoin(Coin coin) {
    if (dist(x,y,coin.x,coin.y) < (size + coin.size)/2) {
      coin.active = false;
    }
  }
  
  public void move() {
    collideWorldBounds();
    
    x += vel.x;
    y += vel.y;
  }
}
