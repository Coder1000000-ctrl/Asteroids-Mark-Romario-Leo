int lives = 4;
int x1 = 170;
int y1 = 40;
int x2 = x1-50;
int x3 = x2-50;

void setup() {
    size(1400,800);
    background(0);
    }

void draw() {
    background(0);
    if(lives >= 2) {
        stroke(255);
        fill(0);
        triangle(x1, y1, x1+20, y1+40, x1-20, y1+40);
    }
        
    if(lives >= 3){
        stroke(255);
        fill(0);
        triangle(x2, y1, x2+20, y1+40, x2-20, y1+40);
    }

    if(lives == 4){
        stroke(255);
        fill(0);
        triangle(x3, y1, x3+20, y1+40, x3-20, y1+40);
    }
}
