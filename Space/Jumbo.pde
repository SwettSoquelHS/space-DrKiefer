public class Jumbo extends Normal {

  public Jumbo(float x, float y, color Color, float angle, float speed, int radius, int Num) {
    super(x, y, Color, angle, speed, radius, Num);
  }
  public void Show() {
    this.radius+= 100;
  }
}
