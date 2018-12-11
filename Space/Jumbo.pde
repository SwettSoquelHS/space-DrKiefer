class Jumbo extends Normal {
  float x, y;
  public Jumbo(float x, float y, color Color, float angle, float speed, int radius, int Num) {
    super(x, y, Color, angle, speed, radius, Num);
    this.x = x;
    this.y = y;
    Color = color(random(220), random(220), 0, random(255));
  }
  @Override
    public void Show() {
    this.radius+= 0.01;
    pushMatrix();
    float CosAngle =5 * ( ( -31) * cos(radians(angle)) - 3 * cos((-11.6 + 1) * radians(angle))); /* + whatever float*/

    float SinAngle =5 * ( (-31) * sin(radians(angle)) - 3 * sin((-11.6 + 1) * radians(angle)));
    Color = color(random(220, 255), random(220), 0, random(255));
    fill(Color);
    ellipse(width/2 + CosAngle + x, height/2 + SinAngle + y, radius, radius);
    popMatrix();
  }
}
