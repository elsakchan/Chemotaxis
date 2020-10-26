Mole[] fred;
Hole susan;

 void setup()   
 {       
   size(800, 600);
   fred = new Mole[30];
   susan = new Hole();
   for(int i = 0; i < fred.length; i++)
   {
     fred[i] = new Mole();
   }
 }   
 
 void draw()   
 {    
   background(64, 48, 20);
   susan.show();
   for(int i = 0; i < fred.length; i++)
   {
     fred[i].walk();
     fred[i].show();
   }
 }  
 
 void mousePressed()
 {
   size(800, 600);
   fred = new Mole[30];
   susan = new Hole();
   for(int i = 0; i < fred.length; i++)
   {
     fred[i] = new Mole();
   }
   draw();
 }   
 
 class Mole    
 {
   int myX, myY;
   Mole()
   {
   myX = (int)(Math.random()*600);
   myY = (int)(Math.random()*800);
   }
   void walk()
   {
   if(mouseX > myX)
     myX = myX + (int)(Math.random()*5)-1;
   if(mouseY > myY)
     myY = myY + (int)(Math.random()*5)-1;
   if(mouseX < myX)
     myX = myX - (int)(Math.random()*5)-1;
   if(mouseY < myY)
     myY = myY - (int)(Math.random()*5)-1;
   }
   void show()
   {
   fill(162, 118, 133);
   ellipse(myX-14, myY-30, 9, 15);
   ellipse(myX+14, myY-30, 9, 15);
   fill(50);
   ellipse(myX, myY, 45, 60);
   triangle(myX-20, myY-30, myX, myY+3, myX+20, myY-30);
   fill(162, 118, 133);
   ellipse(myX, myY-1, 8, 8);
   fill(0);
   ellipse(myX-5, myY-20, 5, 5);
   ellipse(myX+5, myY-20, 5, 5);
   if(dist(myX, myY, susan.x, susan.y) < 45)
   {
     myX = myX*1000;
     myY = myY*1000;
   } else {
     myX = myX*1;
     myY = myY*1;
   }
   }
 }
 
 class Hole
 {
   int x, y;
   Hole()
   {
     x = (int)(Math.random()*720)+25;
     y = (int)(Math.random()*520)+25;
   }
   void show()
   {
     fill(0);
     ellipse(x, y, 100, 30);
   }
 }
 
