int screenX = 1000;
int screenY = 1000;
int angle = 30;
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
  noStroke();
  color background = color (0,0,0,10);
  fill(background);
  

  rect(0,0,screenX,screenY);
  fill(color(255,200,255,10));
 /* 
Playing around with setting color and location of circles
  circle(mouseX,mouseY,200);
fill(color(0,255,255,10));
circle((mouseX+100),mouseY,200);
 fill(color(255,0,255,20));
circle((mouseX-100),mouseY,200);
*/

//Playing around with creating random circles with random colors 

colorMode(HSB,360,100,100);
angle = angle+1;
if(angle > 360) angle = 0;
println(angle);
float hue = random(angle,angle+150);
float sat = random(100,100);
float bri = random(100,100);
color circle_color = color (hue,sat,bri);
fill(circle_color); 
 //fill(color(random(100),(100),(100),255));
circle(random(screenX),random(screenY),200);


}
