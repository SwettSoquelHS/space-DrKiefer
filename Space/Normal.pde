class Normal {
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
  void Show() {
    //radius = radius + 1;
   // angle = Num * Math.PI * SpinEffect / numberOfObjects;
    //float CosAngle = (float)Math.cos(angle) * radius/* + whatever float*/ ; 
    //float SinAngle = (float)Math.sin(angle) * radius;
    float CosAngle =5 * ( ( -31) * cos(radians(angle)) - 3 * cos((-11.6 + 1) * radians(angle))); /* + whatever float*/ ; 
    float SinAngle =5 * ( (-31) * sin(radians(angle)) - 3 * sin((-11.6 + 1) * radians(angle)));

    ellipseMode(CENTER);
    fill(Color);
    ellipse(width/2 + CosAngle + x, height/2 + SinAngle + y, 10, 10);
  }
  void Move() {
    angle++;
  }
}
