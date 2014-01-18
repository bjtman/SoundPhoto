// Brian Tice
// SoundPhoto

import ddf.minim.*;
import de.looksgood.ani.*;

PImage photo;
Minim minim;

float radius = 0;


AudioSample[] tracks;
int[] xVals;
int[] yVals;
int[] strokeVals = {127,200,135,100,190,240,108,120,80,50,200,210,130,150,192,150,60,80,130,150,200};
int index = 0;
void setup()
{
  size(561,561);
  smooth();
  ellipseMode(RADIUS);
  minim = new Minim(this);
  tracks = new AudioSample[20];
  xVals = new int[20];
  yVals = new int[20];
  
  
  for(int i=1;i<20;i++)
  {  
    tracks[i] = minim.loadSample("track" + i + ".mp3",512);
  }
  Ani.init(this);
  photo = loadImage("MoleraBeachBigSur.JPG");
  background(photo);
  stroke(250);
}

void draw()
{
  fill(0,127);
  rect(0,0,width,height);
  noFill();
  index = 0;
  background(photo); 
  
   // test pattern
   for(int i=1;i<561;i++)
   {
      stroke(i/2);
      if((i % 11) == 0)
      {
        point(i,50);
        point(i,500);
      }
   }
   
   
  
   stroke(250);
   noFill();
   beginShape(POINTS);
   while(index < 20)
   {
     stroke(strokeVals[index]);
     vertex(xVals[index],yVals[index]);
     index++;
   }
   endShape();
   if(radius < 20)
   {
     //loop();
     ellipse(mouseX,mouseY,radius,radius);
   }
   else
   {
     radius = 0;
     
     stroke(127);
      // really want to add to point verticies.
     //noLoop();
   }
}

void keyPressed()
{
   if(key == 'a') 
   { 
     tracks[1].trigger();
     xVals[1] = mouseX; yVals[1] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 's')
   {
     tracks[2].trigger();
     xVals[2] = mouseX; yVals[2] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'd')
   {
     tracks[3].trigger();
     xVals[3] = mouseX; yVals[3] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
  if(key == 'f')
   {
     tracks[4].trigger();
     xVals[4] = mouseX; yVals[4] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'g')
   {
     tracks[5].trigger();
     xVals[5] = mouseX; yVals[5] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'h')
   {
     tracks[6].trigger();
     xVals[6] = mouseX; yVals[6] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
  if(key == 'j')
   {
     tracks[7].trigger();
     xVals[7] = mouseX; yVals[7] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'k')
   {
     tracks[8].trigger();
     xVals[8] = mouseX; yVals[8] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'l')
   {
     tracks[9].trigger();
     xVals[9] = mouseX; yVals[9] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'z')
   {
     tracks[10].trigger();
     xVals[10] = mouseX; yVals[10] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'x')
   {
     tracks[11].trigger();
     xVals[11] = mouseX; yVals[11] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
    if(key == 'c')
   {
     tracks[12].trigger();
     xVals[12] = mouseX; yVals[12] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   
}

void mousePressed()
{
  
  
  //point(mouseX,mouseY);
}


  
  

