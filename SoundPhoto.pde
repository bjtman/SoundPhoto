// Brian Tice
// SoundPhoto

import ddf.minim.*;
import de.looksgood.ani.*;

PImage photo;
Minim minim;

float radius = 0;


AudioSample[] tracks;           // array of minim mp3 track audio samples
int[] xVals;                    // x coordinates of all soundpoints 
int[] yVals;                    // y coordinates of all soundpoints
int[] strokeVals;
int index = 0;
int ind   = 1;

void setup()
{
  size(561,561);
  smooth();
  ellipseMode(RADIUS);
  minim  = new Minim(this);
  tracks = new AudioSample[20];
  xVals  = new int[20];
  yVals  = new int[20];
  strokeVals = new int[20];
  
  
  for(int i=1;i<20;i++)
  {  
    tracks[i] = minim.loadSample("track" + i + ".mp3",512);
    strokeVals[i] = int(random(100,255)); // create random star brightness 
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
   if(key == 'v')
   {
     tracks[13].trigger();
     xVals[13] = mouseX; yVals[13] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   if(key == 'b')
   {
     tracks[14].trigger();
     xVals[14] = mouseX; yVals[14] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
   }
   
}

void mousePressed()
{
  
  
  if(ind < 20) 
  {
     tracks[ind].trigger();
     xVals[ind] = mouseX; yVals[ind] = mouseY;
     Ani.to(this, .5, "radius", 20, Ani.QUAD_OUT);
     ind++;
  }
  else
  {
     ind = 1;
  }
  
  
}


  
  

