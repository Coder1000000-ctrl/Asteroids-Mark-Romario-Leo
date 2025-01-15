Life[] triGroup;
int pos = 0;


void setup() { // Happens once at launch
    size(1400, 800);
    background(0);
    triGroup = new Life[100];
    triGroup[i].display();

}

void draw() { // Happens constantly (screen refresh)
    background(0,0,0);

    for (int i = 0; i < pos; i++) {
    }

}
void mousePressed() {
    if(pos < triGroup.length) {
        triGroup[pos] = new Life(mouseX, mouseY, 70);
        pos++; //Next empty position
    }
}


class Life {
    int x, y, r;
    int x1, x2, x3, y1;
    int dx, dy; //Speed or Velocity
    int cr, cg, cb; //RGB Values
    int grav; //Gravity

    //Constructor
    Life(int tempx, int tempy, int tempr) {
        x = tempx; //set the x cord
        y = tempy; //set the y cord
        r = tempr; //set the radius

        x1 = 170;
        y1 = 40;
        x2 = x1-30;
        x3 = x2-30;
        //Set the colour
        cr = int( random(0,255));
        cg = int( random(0,255));
        cb = int( random(0,255));

        //Set Velocity & Gravity
        dx = int( random(-10,10));
        dy = int( random(-10,10));
        grav = -1;
    }

    void display() {
        stroke(255);
        fill(0);
        triangle(x1, y1, x1+10, y1+20, x1-10, y1+20);

        stroke(255);
        fill(0);
        triangle(x2, y1, x2+10, y1+20, x2-10, y1+20);

        stroke(255);
        fill(0);
        triangle(x3, y1, x3+10, y1+20, x3-10, y1+20);

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
}