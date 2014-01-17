// Brian Tice
// SoundPhoto

import ddf.minim.*;

PImage photo;
Minim minim;



AudioSample[] tracks;

void setup()
{
  size(630,630);
  minim = new Minim(this);
  tracks = new AudioSample[20];
  
  for(int i=1;i<20;i++)
  {  
    tracks[i] = minim.loadSample("track" + i + ".mp3",512);
  }
  
  photo = loadImage("MuirBeach.jpg");
}

void draw()
{
  background(photo);
}

void keyPressed()
{
   if(key == 'a') tracks[1].trigger();
   if(key == 's') tracks[2].trigger();
   if(key == 'd') tracks[3].trigger();
   if(key == 'f') tracks[4].trigger();
   if(key == 'g') tracks[5].trigger();
   if(key == 'h') tracks[6].trigger();
   if(key == 'j') tracks[7].trigger();
   if(key == 'k') tracks[8].trigger();
   if(key == 'l') tracks[9].trigger();
   if(key == 'z') tracks[10].trigger();
   if(key == 'x') tracks[11].trigger();
   if(key == 'c') tracks[12].trigger();
   
}

