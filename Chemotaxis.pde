
/* @pjs preload="sky.png"; */
/* @pjs preload="starz.png"; */
Bacteria[] bye;
PImage photo;
PImage phot;

 void setup()   
 {     
 	size (500,500);
 	frameRate(100);
 	bye=new Bacteria[10];
 	for(int i=0; i<bye.length;i++)
 	{
 		bye[i] = new Bacteria ((int)(Math.random()*6)+200,(int)(Math.random()*6)+200);
 	}
 }   
 void draw()   
 {    
 	background(0);
 	photo= loadImage("sky.png");
 	phot= loadImage("starz.png");
 	image(photo,0,0,700,700);
 	for(int i =0; i<bye.length;i++ ){
 		bye[i].walk();
 		bye[i].show();
 	}

 } 

 class Bacteria  
  {     
 	int myX;
	int myY;
	Bacteria(int x, int y){
		myX = x;
		myY = y;
	}
	void walk()
	{
		if (mouseX>myX){
			myX=myX+(int)(Math.random()*20)-6;
		}
		else
		{
			myX=myX+(int)(Math.random()*20)-15;
		}
		if (mouseY>myY){
			myY=myY+(int)(Math.random()*20)-6;
		}
		else
		{
			myY=myY+(int)(Math.random()*20)-15;
		}
	}  

	void show()
	{
		
		image(phot,myX,myY,150,150);

	}
 }    