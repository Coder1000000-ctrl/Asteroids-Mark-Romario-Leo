ArrayList<Bullet> bulletGroup;
float x;
float y;
int ammo = 1;

void setup() {
    size(1400, 800);
    background(0);
    x = width/2;   
    y = height/1.2;
    bulletGroup = new ArrayList<Bullet>();
}

void draw() { // Happens constantly (screen refresh)
    background(0);

    display();
    for (Bullet theBullet : bulletGroup) {
     theBullet.move();
   
     theBullet.display();
    }
    if (millis() % 600 >= 0 && millis() % 600 <= 20) {
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
        if (ammo > 0) {

        bulletGroup.add(new Bullet(x,y));
        ammo--;
        }
    
    }
     if (key == 'd') {
        x= x+10;

    }

     if (key == 'a') {
        x=x-10;
        
    }
    if (keyCode == UP ){
        if (ammo > 0) {

        bulletGroup.add(new Bullet(x,y));
        ammo--;
        }
    }
    if (keyCode == RIGHT) {
        x= x+10;

    }

    if (keyCode == LEFT) {
        x=x-10;
        
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
