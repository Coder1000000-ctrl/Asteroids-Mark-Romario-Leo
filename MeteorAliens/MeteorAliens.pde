ArrayList<Ball> ballGroup;
//Ball[] ballGroup;
//int pos = 0;

void setup() { // Happens once at launch
    int x = 150;
    int y = 50;
    int x2 = 150;
    int y2 =50;
    
    size(1400, 800);
    background(0);
    ballGroup = new ArrayList<Ball>();

    ballGroup.add( new Ball(x, x2, y, y2,  50, false) );
   
}


void draw() { // Happens constantly (screen refresh)
    background(200,200,200);

    for (Ball theBall : ballGroup) {
    //   theBall.move();
      
      //Check against other objects in group
      for (Ball otherBall : ballGroup) {
        if(theBall != otherBall) {
          //theBall.checkCollision(otherBall);
      }

int x = 150;
int y = 50;

        theBall.display();
        // x = x + 100;
        // theBall.display();



    
      }
    }
    
}

void mousePressed() {
 // ballGroup[pos] = new Ball(mouseX, mouseY, 70);
    int x = 150;
    int y = 50;
    int x2 = 150;
    int y2 =50;
    ballGroup.add( new Ball(x, x2, y, y2,  50, false) );
}

void keyPressed() {
    if (key == 'c') {
        for (int i = ballGroup.size()-1; i >= 0; i--) {
            ballGroup.remove(i);
        }

}
    }

  


class Ball {
    int x, x2, y, y2,  r;
    int dx, dy; //Speed or Velocity
    int cr, cg, cb; //RGB Values
    int grav; //Gravity


    //Constructor
    Ball(int tempx, int tempx2, int tempy, int tempy2, int tempr, boolean tempinf) {
        x = 50; //set the x cord
        x2 = 50;
        y = 50; //set the y cord
        y2 = 50;
        r = tempr; //set the radius
        


        

        //Set the colour
        cr = 0;
        cg = 0;
        cb = 0;

        // //Set Velocity & Gravity
        // dx = int( random(-10,10));
        // dy = int( random(-10,10));
        // grav = 0;
    }

    void display() {
        stroke(255);
        fill(cr, cg, cb);
        //circle(x,y,r*2);
  
        //Row 1
        circle(x+ 100,y,r*2);
        //circle(x+ 200,y,r*2);
        circle(x+ 300,y,r*2);
        //circle(x+ 400,y,r*2);
        circle(x+ 500,y,r*2);
        //circle(x+ 600,y,r*2);
        circle(x+ 700,y,r*2);
        //circle(x+ 800,y,r*2);
        circle(x+ 900,y,r*2);
        //circle(x+ 1000,y,r*2);
        circle(x+ 1100,y,r*2);
        //circle(x+ 1200,y,r*2);
        //circle(x+ 1300,y,r*2);

        //Row 2
        //circle(x,y+150,r*2);
        circle(x+ 100,y +150,r*2);
        //circle(x+ 200,y +150,r*2);
        circle(x+ 300,y +150,r*2);
        //circle(x+ 400,y +150,r*2);
        circle(x+ 500,y +150,r*2);
        //circle(x+ 600,y +150,r*2);
        circle(x+ 700,y +150,r*2);
        //circle(x+ 800,y +150,r*2);
        circle(x+ 900,y +150,r*2);
        //circle(x+ 1000,y +150,r*2);
        circle(x+ 1100,y +150,r*2);
        //circle(x+ 1200,y +150,r*2);
        //circle(x+ 1300,y +150,r*2);




    }
    }

    class EnemyFire {
    float bulletx, bullety;
    EnemyFire(float tempx, float tempy) {
        bulletx = tempx; //set the x cord
        bullety = tempy; //set the y cord
    }

    void display() {
        fill(41,255,0);
        rectMode(CENTER);
        rect(bulletx, bullety, 5, 35);
    }
    void move() {
        
        bullety = bullety - 10;
    }
}

    // void move() {
    //     y = y + 5;
    //     x = x + 5;
    //     //dy = dy - grav;

    //     if (y >= height - r || y <= 0+r) {
    //         dy = dy * -1;
    //     }
    //     if (x >= width-r || x <= 0+r) {
    //         dx = dx * -1;
    //     }
    // }
    
    // void checkCollision(Ball otherBall) {
    //     double distanceApart = dist(x, y, otherBall.x, otherBall.y);
    //     double threshold = r + otherBall.r;
    // }
        
    //     //Bounce the ball
    //     if (distanceApart < threshold) {
    //         //Store Ball 1's velocity
    //         int tempdx = dx;
    //         int tempdy = dy;
            
    //         // Ball 1 gets Velocity 2
    //         dx = otherBall.dx;
    //         dy = otherBall.dy;
            
    //         // Ball 2 gets Velocity 1
    //         otherBall.dx = tempdx;
    //         otherBall.dy = tempdy;


            

        
        
    
