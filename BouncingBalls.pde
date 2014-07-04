ball hor;
ball vert;
ball diag;
ball diagclick;
 
void setup() {  //setup function called initially, only once
  size(500, 250);
  hor = new ball(5,0,false, color(0,0,225));
  vert = new ball(0,5, false, color(225, 0, 225));
  diag = new ball(5,5, false, color(0,225,0));
  diagclick = new ball(10,5,true, color(225,0,0));
}

class ball{
  int x = 50;
  int y = 50;
  int dx;
  int dy;
  boolean click;
  color c;
 /* ball(int dxnum, int dynum){
    //x = xnum;
   // y = ynum;

  }*/
  ball(int dxnum, int dynum, boolean clicked, color tempC){
    dx = dxnum;
    dy = dynum;
    click = clicked;
    c = tempC;
  }
  void display(){
    fill(c);
    ellipse(x,y,20,20);
  } 
  void move(){

  if(click){
     if(mousePressed){
     x = x + dx;
     y = y + dy;
     
         if (x > 500) {        // X axis collision
            dx = -9;
         }
         else if (x < 0) {
            dx = 9;
         }
 
         if (y > 250)  {      // Y axis collision
             dy *= -1;        // the same as dy = dy*(-1)
         }
         else if (y < 0) {
              dy *= -1;
         }
      }

}else{
           x = x + dx;
           y = y + dy;
           if (x > 500) {        // X axis collision
              dx = -9;
            }
           else if (x < 0) {
              dx = 9;
           }
 
           if (y > 250)  {      // Y axis collision
               dy *= -1;        // the same as dy = dy*(-1)
           }
           else if (y < 0) {
              dy *= -1;
           }
         } 
      }  
}

void draw(){
  background (0,225, 225);
  hor.display();
  vert.display();
  diag.display();
  diagclick.display();
  hor.move();
  vert.move();
  diag.move();
  diagclick.move();
}
