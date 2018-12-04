//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
int numberOfObjects = 20;
//int radius = 10;
int savedTime;
int totalTime = 500;
float SpinEffect = 0;
Normal norm = new Normal(0, 0, 100, 70, 10, 10, 0);
int Max = 0;
void setup() {

  size(500, 500);
  savedTime = millis();
  //your code here
} //end of setup


void draw() {
  //Timer();
   norm.Show();
   norm.Move();
  //your code here
} //end of draw

void CreateRing() {
/*
  for (int i = 0; i < norm.length; i++)
  {
    norm[i] = new Normal(0, 0, 100, 1, 10, 100, i);
    norm[i].Show();
    Max = Max + 2;
    //int printNum = 0;
    //println(printNum + 1);
  }
}
*/
}
/*
void Timer() {
  if (Max <= 80) {
    int passedTime = millis() - savedTime;
   // int NewpassedTime = millis() + savedTime;
   // int ReverseTotal = 5000;
    // Has five seconds passed?
    if (passedTime > totalTime) {
      float NewSpin = random(1, 1.5);
      SpinEffect = SpinEffect + 1;
      CreateRing();


      savedTime = millis();
    }
  }
  */
