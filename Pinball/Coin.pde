public class Coin extends Thing {
  public boolean active = true;
  
  public Coin() {
    super((int)random(25,width-25),(int)random(25,height-25),#FFFF00);
  }
}
