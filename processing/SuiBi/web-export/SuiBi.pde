boolean onoff[] = new boolean[13];
void setup(){

  size(900,400,P3D);
background(#2F3238);
for(int i=0;i<13;i++){
onoff[i]=true;

}

}
int logo_X,logo_Y;
int adjy=0;
int inS;
boolean setON=true;
void draw(){
  println(mouseX);

  /*
  
 if(setON){
  inS=(int)random(mouseX%13);
  onoff[inS]=! onoff[inS]; 
 }else{
 
 }
 */
  
  background(#2F3238);
  adjy=70;
  stroke(#DE5E60);
  
  strokeWeight(3);
  
  /*
  line(450,0,450,400);
  line(0,200,900,200);*/
// translate(mouseX,mouseY);
  drawS(240,100+adjy);
  drawU(270,200+adjy);
  drawI(400,200+adjy);
  drawB(550,200+adjy);
  drawI(660,200+adjy);
  
 if(frameCount%10==0) for(int i=0;i<13;i++)onoff[i]=true;
  
  }
  
  



float z=0;
void drawS(int x,int y)
{  
  int xr=5,yr=5;
  int FZ=10;
  int cs=5;
  

  pushMatrix();
// translate(300,0,0);
// rotateY(z+=0.01);
  // strokeWeight(3);

 if(onoff[0])line(x,y,x-xr*FZ,y-yr*FZ); 
 if(onoff[1])line(x-(-xr*FZ)-FZ*10,y-yr*FZ,x-FZ*10,y);
 if(onoff[2])line(x-FZ*10,y,x-(xr*FZ*-1)-FZ*10,y-(yr*FZ*-1));
 if(onoff[3])line(x-(-xr*FZ)-FZ*10,y-yr*FZ+FZ*10,x-FZ*10,y+FZ*10);
 if(onoff[4])line(x-(-xr*FZ)-FZ*20,y-yr*FZ+FZ*10,x-FZ*10,y+FZ*10);
 
 
 
  //strokeWeight(1);
  //fill(200);
  ellipse(x,y,cs,cs);
  ellipse(x-xr*FZ,y-yr*FZ,cs,cs);
  ellipse(x-(xr*FZ*-1)-FZ*10,y-(yr*FZ*-1),cs,cs);
  ellipse(x-FZ*10,y,cs,cs);
  ellipse(x-(-xr*FZ)-FZ*20,y-yr*FZ+FZ*10,cs,cs);
  ellipse(x-FZ*10,y+FZ*10,cs,cs);
  
  popMatrix();

}

void drawU(int x, int y){
  int FZ=10;
  int cs=5;
  
  

  
 if(onoff[5])line(x+FZ*10,y,x,y);
 if(onoff[6])line(x+FZ*10,y,x+FZ*10,y-FZ*15);
 if(onoff[7])line(x,y,x,y-FZ*15);
  
  ellipse(x+FZ*10,y,cs,cs);
  ellipse(x,y,cs,cs);
  ellipse(x+FZ*10,y-FZ*15,cs,cs);
  ellipse(x,y-FZ*15,cs,cs);


}

void drawB(int x,int y){
  int cs=5;
  
  noFill();
  


  if(onoff[8]) rect(x-20,y-150,50,50);
  if(onoff[9])rect(x-20,y-100,100,100);
  
  
  fill(255);
  
  ellipse(x-20,y-150,cs,cs);
  ellipse(x-20,y,cs,cs);
  ellipse(x+80,y,cs,cs);
  ellipse(x+30,y-100,cs,cs);
  ellipse(x-20,y-100,cs,cs);
  ellipse(x+80,y-100,cs,cs);
  ellipse(x+30,y-150,cs,cs);


}

void mouseMoved(){
inS=(int)random(13);
  onoff[inS]=! onoff[inS]; 
}


void drawI(int x,int y){
  
  int FZ=10;
  int cs=5;


 if(onoff[10])  line(x+FZ*10,y,x,y);
 if(onoff[11]) line(x+FZ*5,y,x+FZ*5,y-FZ*15);
 if(onoff[12])line(x+FZ*10,y-FZ*15,x,y-FZ*15);
  
  ellipse(x+FZ*10,y,cs,cs);
  ellipse(x,y,cs,cs);
  ellipse(x+FZ*5,y,cs,cs);
  ellipse(x+FZ*5,y-FZ*15,cs,cs);
  ellipse(x+FZ*10,y-FZ*15,cs,cs);
  ellipse(x,y-FZ*15,cs,cs);
  
  
}




