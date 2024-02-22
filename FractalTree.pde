public void setup() 
{   
  size(640,580);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(255,8,152);   
  line(320,580,320,480);
  drawBranches(320,480,150,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  
  branchLength = branchLength * fractionLength;
  
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int eSize = 10;
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if(branchLength>smallestBranch){
    drawBranches(endX1,endY1,branchLength/1.1,angle1);
    drawBranches(endX2,endY2,branchLength/1.1,angle2);    
    ellipse(endX1,endY1,eSize/2,eSize/2);
    ellipse(endX2,endY2,eSize/2,eSize/2);
  }
} 
