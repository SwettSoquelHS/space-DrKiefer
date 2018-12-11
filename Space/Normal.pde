public class Normal {
  protected float x;
  protected float y;
  protected color Color;
  protected float angle;
  protected float speed;
  protected int radius;
  protected int Num;
  public Normal(float x, float y, color Color, float angle, float speed, int radius, int Num) {
    this.x = x;
    this.y = y;
    this.Color = Color;
    this.angle = angle;
    this.speed = speed;
    this.radius = radius;
    this.Num = Num;
  }
  public void Show() {

    float CosAngle =5 * ( ( -31) * cos(radians(angle)) - 3 * cos((-11.6 + 1) * radians(angle))); /* + whatever float*/

    float SinAngle =5 * ( (-31) * sin(radians(angle)) - 3 * sin((-11.6 + 1) * radians(angle)));
    pushMatrix();
    ellipseMode(CENTER);
    fill(Color);
    noStroke();

    Color = color(random(220, 255), random(220), 0, random(255));
    fill(Color);
    ellipse(width/2 + CosAngle + x, height/2 + SinAngle + y, radius, radius);
    popMatrix();
  }


  void Move() {
    angle++;
  }
}
