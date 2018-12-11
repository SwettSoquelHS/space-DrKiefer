//Declare your variables here

int numberOfObjects = 20;

int savedTime;
int totalTime = 30000;
float SpinEffect = 0;
Normal norm = new Normal(0, 0, 255, 70, 5, 10, 0);
int Max = 0;
Jumbo jum = new Jumbo(0, 50, 255, -10, 10, 10, 0);
Oddball odd = new Oddball(250, 250, 255, 0, 10, 100, 0);
void setup() {
  background(0);
  size(500, 500);
  savedTime = millis();
} 


void draw() {

  Timer();
  odd.NewMove(mouseX, mouseY);
} 



void Timer() {

  int passedTime = millis() - savedTime;
  Normal[] norm2 = new Normal[3];
  norm2[0] = norm;
  norm2[1] = jum;
  norm2[2] = odd;


  for (Normal a : norm2) {
    if (a != norm2[2]) {


      a.Show();
      a.Move();
    }
  }
  if (passedTime > totalTime) {
    norm2[2].Show();
    norm2[2].Move();
  }
}
