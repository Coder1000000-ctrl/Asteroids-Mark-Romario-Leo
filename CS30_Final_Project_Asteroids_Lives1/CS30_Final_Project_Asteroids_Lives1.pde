int lives = 3;
int x1, x2, x3, y1;
x1 = 170;
y1 = 40;
x2 = x1-30;
x3 = x2-30;

void setup(){
    size(1400, 800);
    background(0);
    }

void draw() {
    background(0);

    if(lives = 1);
    stroke(255);
    fill(0);
    triangle(x1, y1, x1+10, y1+20, x1-10, y1+20);
    
    if(lives = 2);
    stroke(255);
    fill(0);
    triangle(x2, y1, x2+10, y1+20, x2-10, y1+20);
    
    if(lives = 3);
    stroke(255);
    fill(0);
    triangle(x3, y1, x3+10, y1+20, x3-10, y1+20);
    }
