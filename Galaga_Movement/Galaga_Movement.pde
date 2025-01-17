ArrayList<Bullet> bulletGroup;
float x;
float y;
int ammo = 1;
int moveState = 0;
int moveStep = 5;
boolean shootState = false;


void setup() {
    size(1400, 800);
    background(0);
    x = width/2;   
    y = height/1.2;
    bulletGroup = new ArrayList<Bullet>();
}

void draw() { // Happens constantly (screen refresh)
    background(0);
    x = x + moveState;
    if (x>width-20){
        x = width-20;
    }
    if (x<20){
        x = 20;
    }
    if (shootState){
        if (ammo > 0) {
        bulletGroup.add(new Bullet(x,y));
        ammo--;
        }
    }
    display();
    for (Bullet theBullet : bulletGroup) {
     theBullet.move();
   
     theBullet.display();
    }
    if (millis() % 600 >= 0 && millis() % 600 <= 15) {
        ammo = 1;
    }  
}




void display() {
    stroke(255);
    fill(0);
    rectMode(CENTER);
    triangle(x, y, x-20, y+60, x+20, y+60); 
    
}

void keyPressed(){
    if (key == 'w' ){
        shootState = true;
    }
     if (key == 'd') {
        moveState = moveStep;
    }
    if (key == 'a') {
        moveState = -1*moveStep; 
    }
    if (keyCode == UP ){  
        shootState = true;
    }
    if (keyCode == RIGHT) {
        moveState = moveStep;
    }
    if (keyCode == LEFT) {
        moveState = -1*moveStep;
    }
}

void keyReleased() {
    if (key == 'w' ){
        shootState = false;
    }
    if (key == 'd') {
        moveState = 0;
    }
    if (key == 'a') {
        moveState = 0;
    }
    if (keyCode == UP) {
        shootState = false;
    }
    if (keyCode == RIGHT) {
        moveState = 0;
    }
    if (keyCode == LEFT) {
        moveState = 0;
    }
}

class Bullet {
    float bulletx, bullety;
    Bullet(float tempx, float tempy) {
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
