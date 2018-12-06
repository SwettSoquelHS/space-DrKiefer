//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
int numberOfObjects = 20;
//int radius = 10;
int savedTime;
int totalTime = 500;
float SpinEffect = 0;
Normal norm = new Normal(0, 0, 255, 70, 10, 10, 0);
int Max = 0;
Jumbo jum = new Jumbo(0, 50, 100, 70, 10, 10, 0);
void setup() {
  background(0);
  size(500, 500);
  savedTime = millis();
  //your code here
} //end of setup


void draw() {
  Timer();
  norm.Show();
  norm.Move();
  //your code here
} //end of draw



void Timer() {

  int passedTime = millis() - savedTime;

  // int NewpassedTime = millis() + savedTime;
  // int ReverseTotal = 5000;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    //float NewSpin = random(1, 1.5);
    jum.Show();
    println("Hello There");
    // SpinEffect = SpinEffect + 1;



    savedTime = millis();
  }
}
