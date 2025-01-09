ArrayList<Ball> ballGroup;

// Ball[] ballGroup;
// int pos = 0;
// Ball redball, ball2;

void setup() { // Happens once at launch
    size(1280, 720);
    background(200,200,200);
    ballGroup = new ArrayList<Ball>();
    // redball = new Ball(200,200,50);
    // ball2 = new Ball(700,600,75);
}

void draw() { // Happens constantly (screen refresh)
    background(200,200,200);

    for(Ball theBall : ballGroup) {
        theBall.move();

        // Checks for otherBall Collision
        for(Ball otherBall : ballGroup) {
            if (theBall != otherBall) {
                theBall.checkCollision(otherBall);
            }
        }

        theBall.display();
    }

    // for (int i = 0; i < ballGroup.size(); i ++) {
    //     ballGroup.get(i).display();
    //     ballGroup.get(i).move();
    // }


    // redball.display();
    // redball.move();
    // ball2.display();
    // ball2.move();
}

void mousePressed() {
    ballGroup.add( new Ball(mouseX, mouseY, 70, false) );
}

void keyboardPressed() {
    if(key == 'c') {
    for (int i = 0; i < ballGroup.size()-1; i--) {
        ballGroup.remove(i);
        }
    }
    else if (key = 'j') {
        ballGroup.add(new Ball(width/2, height/2, 50, true));
    }
}

class Ball {
    int x, y, r;
    int dx, dy; // Speed or Velocity
    int cr, cg, cb; // RGB Values
    int grav; // Gravity
    boolean infected;

    // Constructor
    Ball(int tempx, int tempy, int tempr, int tempinf) {
        x = tempx; //set the x cord
        y = tempy; // set the y cord
        r = tempr; // set the radius

        // Set the colour
        cr = int( random(0,255));
        cg = int( random(0,255));
        cb = int( random(0,255));

        // Set Velocity
        dx = int( random(-10, 10));
        dy = int( random(-10, 10));
        grav = 0;
    }

    void display() {
        // Infection Properties
        if(infected == true) {
            cr = 255;
            cg = 0;
            cb = 0;
            grav = -1;
        }
        // fill(cr, cg, cb);
        // circle(x,y,r*2);
    }

    void move() {
        y = y + dy;
        x = x + dx;
        dy = dy - grav;

        if (y >= height - r || y <= 0+r) {
            dy = dy * -1;
        }
        if (x >= width-r || x <= 0+r) {
            dx = dx * -1;
        }
    }

    void checkCollision(Ball otherBall) {
        double distanceApart = dist(x, y, otherBall.x, otherBall.y);
        double threshold = r + otherBall.r;

        //Bounce the Ball
        if(distanceApart < threshold) {
            // Ball 1 gets Velocity 2
            int tempdx = dx;
            int tempdy = dy;

            // Ball 2 gets Velocity 1
            otherBall.dx = tempdx;
            otherBall.dy = tempdy;
        }

        if(otherBall.infected == true && infected == false) {
            infected = true;
        }
        else if(otherBall.infect == false && infected == true) {
            otherBall.infected == true;
        }
    }
}







 