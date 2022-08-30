int screenX = 1000;
int screenY = 1000;
float _angle = 30;
/*
This is our first example
It makes random circles
*/
void setup()
{
   //Set the window size
  size(1000,1000);
}

void draw()
{
clearScene();
_angle = setAngle(_angle, 0.5);
drawCircle(_angle);
}

void clearScene()
{
//partial screen clear
  noStroke();
  color background = color (0,0,0,10);
  fill(background);
     //rect(0,0,screenX,screenY);
  fill(color(255,255,255,10));
}

float setAngle(float angle,float step)
{
  //check angle value
angle = angle +1;
if (angle > 360)
{
  angle = 0;
}  
println(angle);
return(angle);
}


void drawCircle(float angle)
{
//draw random circle
colorMode(HSB,360,100,100);
float hue = random(_angle,_angle+1);
float sat = random(50,50);
float bri = random(100,100);
color circle_color = color (hue,sat,bri);
fill(circle_color); 
circle(random(screenX),random(screenY),100);

}
