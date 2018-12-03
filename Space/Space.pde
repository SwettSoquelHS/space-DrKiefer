//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
int numberOfObjects = 20;
int radius = 10;
int savedTime;
int totalTime = 500;
float SpinEffect = 0;
void setup() {
  size(500, 500);
  savedTime = millis();
	//your code here
} //end of setup
 

void draw() {
    Timer();
     
	//your code here
} //end of draw

void CreateRing() {
 
   for (int i = 0; i < numberOfObjects; i++)
        {
            radius = radius + 1;
            double angle = i * Math.PI * SpinEffect / numberOfObjects ;
            float CosAngle = (float)Math.cos(angle) * radius/* + whatever float*/ ; 
            float SinAngle = (float)Math.sin(angle) * radius;
            
            ellipseMode(CENTER);
            fill(100);
            
            ellipse(width/2 + CosAngle, height/2 + SinAngle, 10, 10);
            //Vector3 pos = new Vector3(Mathf.Cos(angle), Mathf.Sin(angle), 0) * radius;

            //prefab[i].gameObject.name = RandomName.ToString();
            //Instantiate(prefab[Random.Range(0, prefab.Length)], pos, Quaternion.identity);
            //findObj = true;
        }
}
void Timer() {
  int passedTime = millis() - savedTime;
  int NewpassedTime = millis() + savedTime;
  int ReverseTotal = 5000;
  // Has five seconds passed?
  if (passedTime > totalTime) {
   float NewSpin = random(1, 1.5);
    SpinEffect = SpinEffect + 1;
    CreateRing();
    
    //background(random(255)); // Color a new background
    savedTime = millis(); // Save the current time to restart the timer!
  }
  
}
  
