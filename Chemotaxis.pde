Walker [] aBunch;
void setup()
{
  size(500, 500);
  frameRate(30);
  aBunch = new Walker[100];
  for ( int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Walker();
  }
}
  void draw()
  {
    background(0);
    for ( int i = 0; i < aBunch.length; i++)
    {
      aBunch[i].show();
      aBunch[i].walk();
    }
    fill(#E37C7C);
    quad(50,380,60,410,0,500,0,400);
  }
class Walker
  {
   int myX, myY;
      Walker()
      {
        myX = 50;
        myY = 400;
        walk();
      }
      void walk() {
        myX = myX + (int)(Math.random()*9)+5;
        myY = myY + (int)(Math.random()*9)-9;
        }
      
      void show() {
        fill((int)(Math.random()*256), 0, (int)(Math.random()*256));
        noStroke();
        ellipse(myX, myY, 12,12);
      }
    }
    
