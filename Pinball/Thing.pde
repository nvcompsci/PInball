public class Thing {
  //fields 
  public int x, y, size;
  public color c;

  //constructor
  public Thing(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    this.size = 30;
  }

  public void draw() {
    noStroke();
    fill(c);
    circle(x, y, size);
  }
}
