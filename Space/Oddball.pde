class Oddball extends Normal {
  float tx, ty;
  int radius;
  float angle = 0.0;
  public Oddball(float x, float y, color Color, float angle, float speed, int radius, int Num) {
    super(x, y, Color, angle, speed, radius, Num);
    tx = x;
    ty = y;
    this.radius = radius;
    this.angle = angle;
  }
  @Override
    public void Show() {

    pushMatrix();
    translate(x, y);
    fill(255, 9, 0);
    ellipse(0, 0, radius + 10, radius);
    rotate(angle);
    fill(100, 34, 0);
    ellipse(radius/4, 0, radius/2, radius/2);
    popMatrix();
  }
  public void NewMove(int mx, int my) {

    angle = atan2(my-y, mx-x);
  }
}
