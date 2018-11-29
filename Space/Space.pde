//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
int numberOfObjects = 20;
int radius = 10;
void setup() {
  size(500, 500);
  CreateRing();
	//your code here
} //end of setup
 

void draw() {
	//your code here
} //end of draw

void CreateRing() {
   for (int i = 0; i < numberOfObjects; i++)
        {
            radius = radius + 10;
            double angle = i * Math.PI * 2 / numberOfObjects;
            float CosAngle = (float)Math.cos(angle) * radius;
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
  
